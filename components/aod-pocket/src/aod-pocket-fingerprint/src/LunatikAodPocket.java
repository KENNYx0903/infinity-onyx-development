package com.android.systemui.doze;
import android.hardware.*;
import android.os.Handler;
import android.os.SystemClock;
import android.app.AlarmManager;
import android.content.Context;
import android.util.Log;
import java.util.function.Consumer;
/** Onyx NonUi path, corresponding to the Xiaomi AOD near=1/2, far=0 protocol. */
public final class LunatikAodPocket implements SensorEventListener {
 private static final int NON_UI=33171027;
 private static LunatikAodPocket instance;
 private static boolean resumeHandoff;
 private boolean deliveredNear;
 public static boolean consumeResume(){boolean value=resumeHandoff;resumeHandoff=false;return value;}
 private final Object owner;
 private final SensorManager manager;
 private final Sensor sensor;
 private final Handler handler;
 private boolean registered;
 private Boolean far;
 private long generation;
 private AlarmManager.OnAlarmListener pending;
 private final AlarmManager alarms;
 private LunatikAodPocket(Object o)throws Exception {
  owner=o;
  Context context=(Context)Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);
  alarms=context.getSystemService(AlarmManager.class);
  if(alarms==null)throw new IllegalStateException("AlarmManager unavailable");
  manager=(SensorManager)o.getClass().getField("mSensorManager").get(o);
  handler=(Handler)o.getClass().getField("mHandler").get(o);
  sensor=manager.getDefaultSensor(NON_UI,true);
 }
 /** True means NonUi owns the continuous subscription; false leaves stock behavior. */
 public static boolean setListening(Object owner,boolean enable){
  try{
   if(instance==null || instance.owner!=owner){
    if(instance!=null)instance.stop();
    instance=new LunatikAodPocket(owner);
   }
   LunatikAodPocket b=instance;
   if(b.sensor==null)return false;
   if(!enable){
    Context ctx=(Context)Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);
    android.os.PowerManager pm=ctx.getSystemService(android.os.PowerManager.class);
    if(b.deliveredNear && pm!=null && !pm.isInteractive()){Log.i("LunatikAodPocket","Keep NonUi while pocket-paused");return true;}
    b.stop();return true;
   }
   if(b.registered)return true;
   b.far=null;b.generation++;
   b.registered=b.manager.registerListener(b,b.sensor,SensorManager.SENSOR_DELAY_NORMAL,b.handler);
   Log.i("LunatikAodPocket","NonUi listening="+b.registered);
   return b.registered;
  }catch(Exception e){Log.w("LunatikAodPocket","NonUi unavailable; use stock proximity",e);return false;}
 }
 private void stop(){
  generation++;
  if(pending!=null){alarms.cancel(pending);pending=null;}
  if(registered){manager.unregisterListener(this,sensor);registered=false;Log.i("LunatikAodPocket","NonUi stopped");}
  far=null;deliveredNear=false;resumeHandoff=false;PocketFingerprintGate.setBlocked(false);
 }
 @SuppressWarnings("unchecked") public void onSensorChanged(SensorEvent e){
  if(!registered || e.sensor!=sensor || e.values.length==0)return;
  int value=(int)e.values[0];
  if(value!=0 && value!=1 && value!=2)return;
  final Boolean next=value==0;
  if(next.equals(far))return;
  far=next;final long expected=++generation;
  if(pending!=null)alarms.cancel(pending);
  Log.i("LunatikAodPocket","NonUi raw="+value+" far="+next+" delayMs="+(next?0:5000));
  // Serialize with the Doze controller; don't dispatch a transition from SensorManager registration.
  final Runnable delivery=new Runnable(){public void run(){
   if(!registered || generation!=expected)return;
   try{
    Consumer<Object> callback=(Consumer<Object>)owner.getClass().getField("mProxCallback").get(owner);
    if(callback!=null){
     if(next && deliveredNear){resumeHandoff=true;PocketResume120.resume();}
     deliveredNear=!next;PocketFingerprintGate.setBlocked(!next);callback.accept(next);
    }
    Log.i("LunatikAodPocket","NonUi far="+next);
   }catch(Exception ex){Log.w("LunatikAodPocket","NonUi delivery failed",ex);}
  }};
  pending=null;
  if(next)handler.post(delivery);
  else{
   pending=new AlarmManager.OnAlarmListener(){public void onAlarm(){pending=null;delivery.run();}};
   alarms.setExact(AlarmManager.ELAPSED_REALTIME_WAKEUP,SystemClock.elapsedRealtime()+5000,
    "LunatikAod:NonUiConfirm",pending,handler);
  }
 }
 public void onAccuracyChanged(Sensor s,int a){}
}
