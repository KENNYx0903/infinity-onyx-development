package com.android.systemui.doze;
import android.service.dreams.DreamService;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.IBinder;
import android.os.Parcel;
import android.util.Log;
import java.lang.ref.WeakReference;
import android.content.Context;
import android.os.SystemClock;
import android.view.Choreographer;
import android.view.View;
import android.widget.TextView;
/** Allow a real DOZE frame/modeset before entering DOZE_SUSPEND. */
public final class LunatikAodTransition implements Runnable,Choreographer.FrameCallback {
 private static final Handler handler=new Handler(Looper.getMainLooper());
 private static LunatikAodTransition pending;
 private static DreamService activeService;
 private static int requestedState;
 private static boolean entryWaiting;
 private static WeakReference<Object> clock=new WeakReference<Object>(null);
 private static int plugged=-1;
 private static long lastAod;
 private static int clockState=-1;
 private static long keyguardEntry,biometricUntil,hideClockUntil;
 private static boolean keyguardFromShade;
 public static void clockStateChanged(int state){
  if(state==1 && clockState==0)hideClockUntil=0;
  if(state==1 && clockState!=1){keyguardFromShade=clockState==0;keyguardEntry=SystemClock.uptimeMillis();}
  clockState=state;
  if(state==1)restoreClock();
 }
 private static View currentClock(Object owner)throws Exception{
  return (View)owner.getClass().getField("currentClockView").get(owner);
 }
 private static void restoreClock(){
  Object owner=clock.get();
  if(owner==null)return;
  try{
   View view=currentClock(owner);if(view==null)return;
   boolean dozing=owner.getClass().getField("isDozing").getBoolean(owner);
   float scale=dozing ? .85f : Math.max(50,Math.min(150,owner.getClass().getField("clockSizeScale").getInt(owner)))/100f;
   view.setScaleX(scale);view.setScaleY(scale);view.setVisibility(View.VISIBLE);
  }catch(Throwable error){Log.e("LunatikAod","clock restore failed",error);}
 }
 public static boolean skipClockTransition(Object owner,boolean entering){
  try{
   View view=currentClock(owner);if(view==null)return false;
   if(!entering && (SystemClock.uptimeMillis()<biometricUntil || clockState==0)){
    view.animate().cancel();view.setVisibility(View.INVISIBLE);
    return true;
   }
   view.setVisibility(View.VISIBLE);
  }catch(Throwable error){Log.e("LunatikAod","clock transition failed",error);}
  return false;
 }
 public static boolean hideUnlockClock(){return SystemClock.uptimeMillis()<hideClockUntil;}
 public static void biometric(int mode){
  if((mode==1 || mode==2 || mode==7) && isAodUnlock())hideClockUntil=SystemClock.uptimeMillis()+2000;
  if(mode==1 || mode==2 || mode==7)biometricUntil=SystemClock.uptimeMillis()+2000;
 }
 public static long clockDuration(long duration,boolean entering){
  long now=SystemClock.uptimeMillis();
  if(entering && (clockState!=1 || (keyguardFromShade && now-keyguardEntry<1500)))return 0;
  if(!entering && (now<biometricUntil || clockState==0))return 0;
  return duration;
 }
 public static void alignClock(View owner){
  try{
   View root=(View)owner.getClass().getField("currentClockView").get(owner);
   if(root==null)return;
   Context context=root.getContext();
   View time=root.findViewById(context.getResources().getIdentifier("clock","id",context.getPackageName()));
   View date=root.findViewById(context.getResources().getIdentifier("date","id",context.getPackageName()));
   if(!(time instanceof TextView) || !(date instanceof TextView))return;
   int timeY=top(time,root),dateY=top(date,root);
   if(Math.abs(timeY-dateY)>Math.max(time.getHeight(),date.getHeight())/2)return;
   int offset=dateY+((TextView)date).getBaseline()-timeY-((TextView)time).getBaseline();
   if(Math.abs(offset)<Math.max(time.getHeight(),date.getHeight())/2)time.setTranslationY(offset);
  }catch(Throwable error){Log.e("LunatikAod","clock baseline failed",error);}
 }
 private static int top(View view,View root){
  int value=0;
  while(view!=root){value+=view.getTop();if(!(view.getParent() instanceof View))break;view=(View)view.getParent();}
  return value;
 }
 public static boolean isAodUnlock(){return isAodActive() || SystemClock.uptimeMillis()<biometricUntil || (lastAod!=0 && SystemClock.elapsedRealtime()-lastAod<1000);}
 public static boolean isAodActive(){return activeService!=null && (requestedState==3 || requestedState==4);}
 public static boolean suppressCharging(Context context){
  PowerManager power=context.getSystemService(PowerManager.class);
  boolean suppress=isAodActive() || !power.isInteractive() ||
    (lastAod!=0 && SystemClock.elapsedRealtime()-lastAod<2000);
  Log.i("LunatikAod","charging animation suppressed="+suppress);
  return suppress;
 }
 public static void registerClock(Object view){clock=new WeakReference<Object>(view);}
 private static void updateClock(){
  Object view=clock.get();
  if(view!=null)try{view.getClass().getMethod("forceTimeUpdate").invoke(view);}
  catch(Throwable error){Log.e("LunatikAod","clock update failed",error);}
 }
 public static void battery(int value){
  int previous=plugged;plugged=value;
  if(previous!=value && requestedState==4)refreshWindow(200);
 }
 private final DreamService service;
 private final PowerManager.WakeLock lock;
 private boolean awaitingFrame;
 private int frames;
 private LunatikAodTransition(DreamService service){
  this.service=service;
  lock=service.getSystemService(PowerManager.class).newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,"Lunatik:AodModeset");
 }
 private static void cancel(){
  if(pending!=null){handler.removeCallbacks(pending);Choreographer.getInstance().removeFrameCallback(pending);pending.release();pending=null;}
 }
 public static void stop(DreamService service){if(isAodActive())lastAod=SystemClock.elapsedRealtime();cancel();entryWaiting=false;activeService=null;requestedState=0;LunatikAodVisual.state(false);}
 public static void state(DreamService service,int state){
  boolean entering=(state==3 || state==4) && !isAodActive();
  if(isAodActive())lastAod=SystemClock.elapsedRealtime();
  cancel();activeService=service;requestedState=state;
  if(entering)entryWaiting=true;
  if(state!=3 && state!=4)entryWaiting=false;
  LunatikAodVisual.state(state==3 || state==4);
  if(entryWaiting){Log.i("LunatikAod","defer display state until hidden frame state="+state);return;}
  applyRequestedState();
 }
 public static void entryFadeFinished(){
  if(!entryWaiting || activeService==null || !isAodActive())return;
  entryWaiting=false;
  Log.i("LunatikAod","hidden frame ready; apply display state="+requestedState);
  applyRequestedState();
 }
 private static void applyRequestedState(){
  if(activeService==null)return;
  if(requestedState!=4){apply(activeService,requestedState);return;}
  updateClock();apply(activeService,3);
  LunatikAodTransition task=new LunatikAodTransition(activeService);
  pending=task;task.lock.acquire(1000);handler.postDelayed(task,650);
 }
 public static void refresh(){
  LunatikAodVisual.tick();
  if(requestedState!=4 || activeService==null || pending!=null)return;
  refreshWindow(200);
 }
 public static void notificationWindow(){refreshWindow(450);}
 public static void motionWindow(){refreshWindow(1000);}
 private static void refreshWindow(long duration){
  if(entryWaiting || requestedState!=4 || activeService==null)return;
  cancel();
  updateClock();
  apply(activeService,3);
  LunatikAodTransition task=new LunatikAodTransition(activeService);
  pending=task;task.lock.acquire(1400);handler.postDelayed(task,duration);
 }
 /** Permit the normal UDFPS refresh-rate handshake while the panel is in AOD. */
 public static boolean prepareFingerprint(){
  if(requestedState!=4 || activeService==null)return false;
  refresh();
  return true;
 }
 private static void apply(DreamService service,int state){
  try{service.getClass().getMethod("lunatikApplyScreenState",int.class).invoke(service,state);}
  catch(Throwable error){Log.e("LunatikAod","display state failed",error);}
 }
 private void release(){if(lock.isHeld())lock.release();}
 public void run(){
  if(pending!=this)return;
  if(!awaitingFrame){
   awaitingFrame=true;
   updateClock();
   Choreographer.getInstance().postFrameCallback(this);
   handler.postDelayed(this,250);
   return;
  }
  finish();
 }
 public void doFrame(long frameTimeNanos){
  if(pending!=this)return;
  if(++frames<2){Choreographer.getInstance().postFrameCallback(this);return;}
  finish();
 }
 private void finish(){
  if(pending!=this)return;
  handler.removeCallbacks(this);
  Choreographer.getInstance().removeFrameCallback(this);
  pending=null;
  try{apply(service,4);Log.i("LunatikAod","DOZE_SUSPEND after modeset window");}finally{release();}
 }
}
