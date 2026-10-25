package com.android.systemui.doze;
import android.os.*;import android.util.Log;
public final class PocketFingerprintGate {
 private static Object controller;
 public static void capture(Object c){controller=c;}
 static void clearTouch(){if(controller==null)return;try{controller.getClass().getMethod("tryAodSendFingerUp").invoke(controller);controller.getClass().getMethod("cancelAodSendFingerUpAction").invoke(controller);for(String name:new String[]{"mAodInterruptRunnable"})controller.getClass().getField(name).set(controller,null);controller.getClass().getField("mOnFingerDown").setBoolean(controller,false);controller.getClass().getField("mActivePointerId").setInt(controller,-1);Log.i("PocketFingerprintGate","Cleared suppressed AOD touch");}catch(Exception e){Log.w("PocketFingerprintGate","Touch cleanup",e);}}
 private static volatile boolean blocked;private static boolean desired;private static int generation;
 public static boolean isBlocked(){return blocked;}
 public static boolean shouldBlock(Object owner){return false;}
 static void publish(boolean value){try{android.content.Context c=(android.content.Context)Class.forName("android.app.ActivityThread").getMethod("currentApplication").invoke(null);android.provider.Settings.Secure.putInt(c.getContentResolver(),"lunatik_aod_pocket_block",value?1:0);}catch(Exception e){Log.w("PocketFingerprintGate","Publish failed",e);}}
 public static void setBlocked(boolean value){if(desired==value)return;desired=value;final int token=++generation;if(value){blocked=true;publish(true);}new Handler(Looper.getMainLooper()).postDelayed(()->{if(token!=generation)return;if(!value)clearTouch();blocked=value;publish(value);Log.i("PocketFingerprintGate","pocketBlocked="+value+" native session unchanged");},value?0:800);}
}
