package com.android.server.display.mode;
import android.util.Log;
import android.content.Context;
import android.hardware.*;
import android.os.*;
/** ALS changes are synchronized with the normal DRAW_WAKE_LOCK doze override. */
public final class LunatikAodBrightness implements SensorEventListener,Runnable {
 private static Handler worker(){HandlerThread t=new HandlerThread("LunatikAodBrightness");t.start();return new Handler(t.getLooper());}
 private static final LunatikAodBrightness INSTANCE=new LunatikAodBrightness();
 private final Handler handler=worker();
 private volatile boolean requested;
 private volatile int displayState;
 private boolean active,registered,vendorLight;
 private SensorManager sensors;
 private PowerManager.WakeLock draw,confirmLock;
 private int last=-1,ambientMode=2,pending=2,candidate=-1,retries;
 private long candidateSince,entryBrightnessNotBefore;
 private static final long CONFIRM_MS=2500;
 public static void set(boolean doze){if(INSTANCE.requested==doze)return;INSTANCE.requested=doze;INSTANCE.handler.post(INSTANCE);}
 public static void onDisplayState(int state){
  INSTANCE.displayState=state;
  if(state==3){INSTANCE.handler.removeCallbacks(INSTANCE.apply);INSTANCE.handler.postDelayed(INSTANCE.apply,80);}
 }
 private void record(String text){
  Log.i("LunatikAodBrightness",text);
  try{
   java.io.File f=new java.io.File("/data/system/lunatik-aod-brightness.log");
   try(java.io.FileOutputStream out=new java.io.FileOutputStream(f,f.length()<131072)){
    out.write((System.currentTimeMillis()+" elapsed="+SystemClock.elapsedRealtime()+" "+text+"\n").getBytes(java.nio.charset.StandardCharsets.UTF_8));out.getFD().sync();
   }
  }catch(Exception e){Log.w("LunatikAodBrightness","persistent diagnostic unavailable",e);}
 }
 private final Runnable confirm=new Runnable(){public void run(){
  if(!active || !requested || candidate<1)return;
  long remaining=CONFIRM_MS-(SystemClock.elapsedRealtime()-candidateSince);
  if(remaining>0){handler.postDelayed(this,remaining);return;}
  ambientMode=candidate;pending=candidate;candidate=-1;retries=0;requestDraw();
 }};
 private final Runnable apply=new Runnable(){public void run(){
  if(!active || !requested || pending<1 || displayState!=3)return;
  long remaining=entryBrightnessNotBefore-SystemClock.uptimeMillis();
  if(remaining>0){handler.postDelayed(this,remaining);return;}
  if(write(pending)){
   pending=-1;if(confirmLock!=null && confirmLock.isHeld())confirmLock.release();
  }else if(++retries<4 && displayState==3)handler.postDelayed(this,60);
 }};
 private void requestDraw(){
  if(!active || !requested || draw==null)return;
  // EU uses the same DRAW_WAKE_LOCK mechanism; our test window is bounded at400ms.
  draw.acquire(400);confirmLock.acquire(1000);
  record("DRAW acquired pending="+pending+" displayState="+displayState);
  handler.removeCallbacks(apply);handler.postDelayed(apply,80);
 }
 public void run(){
  if(active==requested)return;active=requested;
  if(!active){
   if(registered){sensors.unregisterListener(this);registered=false;}
   handler.removeCallbacks(confirm);handler.removeCallbacks(apply);candidate=-1;pending=-1;
   if(draw!=null && draw.isHeld())draw.release();
   if(confirmLock!=null && confirmLock.isHeld())confirmLock.release();
   write(0);return;
  }
  try{
   if(sensors==null){
    Class<?> at=Class.forName("android.app.ActivityThread");Object thread=at.getMethod("currentActivityThread").invoke(null);
    Context c=(Context)at.getMethod("getSystemContext").invoke(thread);
    sensors=c.getSystemService(SensorManager.class);PowerManager p=c.getSystemService(PowerManager.class);
    draw=p.newWakeLock(0x80,"LunatikAod:brightness-draw");draw.setReferenceCounted(false);
    confirmLock=p.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,"LunatikAod:brightness-confirm");confirmLock.setReferenceCounted(false);
   }
   entryBrightnessNotBefore=SystemClock.uptimeMillis()+280;
   pending=ambientMode;retries=0;requestDraw();
   vendorLight=false;
   Sensor light=sensors.getDefaultSensor(33171029,true);
   if(light!=null){registered=sensors.registerListener(this,light,SensorManager.SENSOR_DELAY_NORMAL,handler);vendorLight=registered;}
   if(!registered){
    light=sensors.getDefaultSensor(Sensor.TYPE_LIGHT,true);
    if(light!=null && light.getReportingMode()==Sensor.REPORTING_MODE_ON_CHANGE)registered=sensors.registerListener(this,light,1000000,5000000,handler);
   }
   record("auto sensor registered="+registered+" vendorWakeup="+vendorLight+" sensor="+(light==null?"none":light.getName()));
  }catch(Exception e){Log.e("LunatikAodBrightness","setup failed",e);}
 }
 public void onSensorChanged(SensorEvent e){
  if(!active || !requested || e.values.length==0)return;
  float lux=e.values[0];if(Float.isNaN(lux)||Float.isInfinite(lux)||lux<0)return;
  int target=ambientMode;
  if(vendorLight){
   // Xiaomi Aod Wakeup reports states, not lux. Pocket events belong to NonUi.
   if(lux==4f)target=1;else if(lux==3f || lux==5f)target=2;else return;
  }else{if(lux<=8f)target=2;else if(lux>=20f)target=1;}
  if(target==ambientMode){handler.removeCallbacks(confirm);candidate=-1;if(confirmLock!=null && confirmLock.isHeld() && pending<1)confirmLock.release();return;}
  if(candidate==target)return;
  handler.removeCallbacks(confirm);candidate=target;candidateSince=SystemClock.elapsedRealtime();
  confirmLock.acquire(CONFIRM_MS+1000);handler.postDelayed(confirm,CONFIRM_MS);
  record("candidate sensorValue="+lux+" mode="+target+" confirmMs="+CONFIRM_MS);
 }
 public void onAccuracyChanged(Sensor s,int accuracy){}
 private boolean write(int mode){
  if(mode>0 && (!requested || displayState!=3))return false;
  if(last==mode || (last==-1 && mode==0))return true;
  record("native begin mode="+mode+" displayState="+displayState);
  // Recheck after the diagnostic sync; never write a positive level in LP2.
  if(mode>0 && (!requested || displayState!=3))return false;
  try(java.io.FileOutputStream out=new java.io.FileOutputStream("/sys/class/mi_display/disp-DSI-0/doze_brightness")){
   out.write((mode+"\n").getBytes(java.nio.charset.StandardCharsets.US_ASCII));last=mode;
   record("native done mode="+mode+" displayState="+displayState);return true;
  }catch(Exception e){Log.w("LunatikAodBrightness","native failed mode="+mode+" state="+displayState,e);return false;}
 }
}
