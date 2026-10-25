package com.android.server.pocket;
import android.hardware.*;import android.os.*;import android.util.Log;import java.lang.reflect.*;import java.util.WeakHashMap;
/** Onyx OEM pocket algorithm used by Xiaomi EU; no ultrasound or periodic polling. */
public final class PocketSensorCompat {
 static final int OEM=33171095;static final WeakHashMap<Object,State> states=new WeakHashMap<>();
 static Object get(Object o,String n)throws Exception{Field f=o.getClass().getDeclaredField(n);f.setAccessible(true);return f.get(o);}static boolean b(Object o,String n)throws Exception{return (Boolean)get(o,n);}static Object call(Object o,String n)throws Exception{return o.getClass().getMethod(n).invoke(o);}
 public static Sensor select(Object service,Sensor original){if(original!=null)return original;try{SensorManager sm=(SensorManager)get(service,"mSensorManager");Sensor sensor=sm.getDefaultSensor(OEM);if(sensor!=null&&sensor.getVersion()==2){Log.i("PocketSensorCompat","Using Xiaomi OEM pocket v2: "+sensor.getName());return sensor;}}catch(Exception e){Log.w("PocketSensorCompat","Sensor selection",e);}return original;}
 public static float pocketValue(Object service){try{Sensor sensor=(Sensor)get(service,"mVendorSensor");if(sensor!=null&&sensor.getType()==OEM)return 0f;return (Float)get(service,"mVendorPocketSensorValue");}catch(Exception e){return 1f;}}
 static final class State{boolean interactive;Runnable release;}
 /** The non-wakeup OEM sensor must be allowed to deliver its cached result after wake. */
 public static boolean retainOnWake(Object service){try{Sensor sensor=(Sensor)get(service,"mVendorSensor");if(sensor==null||sensor.getType()!=OEM)return false;State state=states.get(service);if(state==null){state=new State();states.put(service,state);}Handler h=(Handler)get(service,"mHandler");boolean interactive=b(service,"mInteractive"),enabled=b(service,"mEnabled");if(!enabled||!interactive){if(state.release!=null)h.removeCallbacks(state.release);state.release=null;state.interactive=interactive;return false;}
  if(!state.interactive){state.interactive=true;final State current=state;state.release=()->{current.release=null;try{call(service,"update$2");}catch(Exception e){Log.w("PocketSensorCompat","Wake check completion",e);}};h.postDelayed(state.release,1500);Log.i("PocketSensorCompat","Wake grace 1500ms");}
  if(state.release!=null){call(service,"registerSensorListeners");return true;}
 }catch(Exception e){Log.w("PocketSensorCompat","Wake grace",e);}return false;}
}
