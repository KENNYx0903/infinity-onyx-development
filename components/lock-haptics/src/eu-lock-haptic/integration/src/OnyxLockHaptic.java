package com.android.systemui.keyguard;
import android.app.Activity;import android.content.*;import android.os.*;import android.provider.Settings;import android.util.Log;
public final class OnyxLockHaptic {
 private static final java.util.concurrent.ExecutorService WORK=java.util.concurrent.Executors.newSingleThreadExecutor();
 public static void play(Context c){WORK.execute(()->{
  try(android.net.LocalSocket s=new android.net.LocalSocket()){
   s.connect(new android.net.LocalSocketAddress("lunatik_lock_haptic"));s.setSoTimeout(350);int level=setting(c,"haptic_feedback_intensity",2);if(setting(c,"haptic_feedback_enabled",1)==0)level=0;s.getOutputStream().write(1+Math.max(0,Math.min(3,level)));if(s.getInputStream().read()!=1)fallback(c);
  }catch(Exception e){Log.w("OnyxLockHaptic","RTP unavailable",e);fallback(c);}
 });}
 static int setting(Context c,String key,int def)throws Exception{return (Integer)Settings.System.class.getMethod("getIntForUser",ContentResolver.class,String.class,int.class,int.class).invoke(null,c.getContentResolver(),key,def,-2);}
 static void fallback(Context c){try{if(setting(c,"haptic_feedback_enabled",1)==0)return;Vibrator v=c.getSystemService(Vibrator.class);if(v!=null)v.vibrate(VibrationEffect.createPredefined(0),new VibrationAttributes.Builder().setUsage(18).build());}catch(Exception e){Log.w("OnyxLockHaptic","fallback failed",e);}}
}
