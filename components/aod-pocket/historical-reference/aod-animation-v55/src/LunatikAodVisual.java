package com.android.systemui.doze;
import android.content.Context;
import android.graphics.Canvas;
import android.hardware.*;
import android.os.*;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/** Native two-level brightness; visual hooks only handle movement and pickup icon. */
public final class LunatikAodVisual {
 private static final Handler H=new Handler(Looper.getMainLooper());
 private static final ArrayList<WeakReference<View>> views=new ArrayList<>();
 private static SensorManager sensors;
 private static Sensor pickup;
 private static boolean aod,registered,pulsing;
 private static int entryGeneration;
 private static float dx,dy;
 private static float handoffAlpha=1f;
 private static long handoffStart, panelReadySince;
 private static android.animation.ValueAnimator reveal;
 private static String node(String name)throws Exception{
  try(java.io.BufferedReader r=new java.io.BufferedReader(new java.io.FileReader("/sys/class/mi_display/disp-DSI-0/"+name))){return r.readLine().trim();}
 }
 private static final Runnable handoff=new Runnable(){public void run(){
  if(!aod)return;
  boolean ready=false;
  try{android.view.Display d=context==null?null:context.getSystemService(android.hardware.display.DisplayManager.class).getDisplay(0);ready=d!=null && d.getState()==4 && Math.abs(d.getMode().getRefreshRate()-30f)<.1f;}catch(Exception ignored){}
  long now=SystemClock.uptimeMillis();
  if(!ready)panelReadySince=0;
  else if(panelReadySince==0)panelReadySince=now;
  boolean settled=ready && now-panelReadySince>=80;
  if(!settled && now-handoffStart<1200){H.postDelayed(this,40);return;}
  LunatikAodTransition.notificationWindow();
  if(entryLock!=null && entryLock.isHeld())entryLock.release();
  reveal=android.animation.ValueAnimator.ofFloat(handoffAlpha,1f);reveal.setDuration(320);
  reveal.setInterpolator(new android.view.animation.AccelerateDecelerateInterpolator());
  reveal.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener(){public void onAnimationUpdate(android.animation.ValueAnimator a){handoffAlpha=(Float)a.getAnimatedValue();invalidate();}});
  reveal.start();android.util.Log.i("LunatikAodVisual","handoff reveal panelReady="+ready);
 }};
 private static void mask(Canvas c,View v){
  // Handoff alpha is applied once on the common hardware-rendered root.
 }

 private static long minute=-1,shownUntil;
 private static int largeClockId=-2,smallClockId=-3;
 private static android.animation.ValueAnimator motion;
 private static PowerManager.WakeLock drawLock,entryLock;
 private static Context context;
 private static final Runnable hide=new Runnable(){public void run(){invalidate();if(aod)LunatikAodTransition.refresh();}};
 private static final TriggerEventListener lift=new TriggerEventListener(){public void onTrigger(TriggerEvent e){
  registered=false;if(!aod)return;
  shownUntil=SystemClock.elapsedRealtime()+5000;
  invalidate();LunatikAodTransition.refresh();
  H.removeCallbacks(hide);H.postDelayed(hide,5000);arm();
 }};
 private static final Runnable iconsChanged=new Runnable(){public void run(){if(aod)LunatikAodTransition.notificationWindow();}};
 public static void notificationsChanged(View v){
  if(!aod)return;
  try{if(!v.getResources().getResourceEntryName(v.getId()).equals("aod_notification_icon_container"))return;}catch(Exception e){return;}
  H.removeCallbacks(iconsChanged);H.post(iconsChanged);
 }
 public static void registerNotifications(View v){
  try{if(!v.getResources().getResourceEntryName(v.getId()).equals("aod_notification_icon_container"))return;}catch(Exception e){return;}
  register(v);
 }
 public static void pulse(boolean value){pulsing=value;invalidate();}
 public static void register(View v){
  v.setWillNotDraw(false);
  for(WeakReference<View> ref:views)if(ref.get()==v)return;
  views.add(new WeakReference<View>(v));
  if(context!=null)return;
  context=v.getContext();
  try{
   Class<?> ids=Class.forName("com.android.systemui.plugins.keyguard.ui.clocks.ClockViewIds");
   Object instance=ids.getField("INSTANCE").get(null);
   largeClockId=(Integer)ids.getMethod("getLOCKSCREEN_CLOCK_VIEW_LARGE").invoke(instance);
   smallClockId=(Integer)ids.getMethod("getLOCKSCREEN_CLOCK_VIEW_SMALL").invoke(instance);
  }catch(Exception ignored){largeClockId=-4;}
  sensors=context.getSystemService(SensorManager.class);pickup=sensors.getDefaultSensor(25,true);
  drawLock=context.getSystemService(PowerManager.class).newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,"LunatikAod:motion");
  drawLock.setReferenceCounted(false);
  entryLock=context.getSystemService(PowerManager.class).newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,"LunatikAod:entry-handoff");entryLock.setReferenceCounted(false);
 }
 public static void state(boolean value){
  if(!value)pulsing=false;
  if(aod==value)return;aod=value;entryGeneration++;shownUntil=0;H.removeCallbacks(hide);
  if(motion!=null){motion.cancel();motion=null;}
  if(drawLock!=null && drawLock.isHeld())drawLock.release();
  minute=-1;H.removeCallbacks(handoff);H.removeCallbacks(iconsChanged);
  if(reveal!=null){reveal.cancel();reveal=null;}
  handoffAlpha=1f;
  if(aod){
   handoffStart=SystemClock.uptimeMillis();panelReadySince=0;if(entryLock!=null)entryLock.acquire(1800);
   if(LunatikAodPocket.consumeResume()){
    // The panel was OFF for pocket pause: never expose the old full-alpha frame.
    handoffAlpha=0f;invalidate();hiddenFrame();tick();arm();return;
   }
   reveal=android.animation.ValueAnimator.ofFloat(1f,0f);reveal.setDuration(180);
   reveal.setInterpolator(new android.view.animation.AccelerateDecelerateInterpolator());
   reveal.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener(){public void onAnimationUpdate(android.animation.ValueAnimator a){handoffAlpha=(Float)a.getAnimatedValue();invalidate();}});
   reveal.addListener(new android.animation.AnimatorListenerAdapter(){public void onAnimationEnd(android.animation.Animator a){if(aod)hiddenFrame();}});
   reveal.start();tick();arm();
  }else{
   if(registered && sensors!=null)sensors.cancelTriggerSensor(lift,pickup);
   registered=false;dx=dy=0;if(entryLock!=null && entryLock.isHeld())entryLock.release();invalidate();
  }
 }
 private static void hiddenFrame(){
  final int generation=entryGeneration;
  final boolean[] completed={false};
  final Runnable done=new Runnable(){public void run(){
   if(completed[0] || !aod || generation!=entryGeneration)return;
   completed[0]=true;
   LunatikAodTransition.entryFadeFinished();
   handoffStart=SystemClock.uptimeMillis();H.post(handoff);
  }};
  View root=null;
  for(WeakReference<View> ref:views){View v=ref.get();if(v!=null && v.getClass().getName().endsWith("KeyguardRootView")){root=v;break;}}
  if(root!=null && root.isAttachedToWindow() && root.isHardwareAccelerated()){
   final View target=root;
   final Runnable committed=new Runnable(){public void run(){H.post(new Runnable(){public void run(){
    android.util.Log.i("LunatikAodVisual","hidden frame committed generation="+generation);done.run();
   }});}};
   try{
    target.getViewTreeObserver().registerFrameCommitCallback(committed);
    target.invalidate();
    H.postDelayed(new Runnable(){public void run(){
     if(!completed[0] && aod && generation==entryGeneration){
      if(target.getViewTreeObserver().isAlive())target.getViewTreeObserver().unregisterFrameCommitCallback(committed);
      android.util.Log.w("LunatikAodVisual","hidden frame callback timeout; bounded fallback");done.run();
     }
    }},240);
    return;
   }catch(RuntimeException error){android.util.Log.w("LunatikAodVisual","hidden frame callback unavailable",error);}
  }
  H.postDelayed(done,80);
 }
 private static void arm(){if(aod && !registered && sensors!=null && pickup!=null)registered=sensors.requestTriggerSensor(lift,pickup);}
 public static void tick(){
  if(!aod)return;
  long m=System.currentTimeMillis()/60000L;if(m==minute)return;
  final float targetX=(int)((m*7)%17)-8,targetY=(int)((m*11)%17)-8;
  boolean initial=minute<0;minute=m;
  if(motion!=null)motion.cancel();
  if(initial){dx=dy=0;invalidate();return;}
  if(drawLock!=null)drawLock.acquire(1000);
  LunatikAodTransition.motionWindow();
  final float fromX=dx,fromY=dy;
  motion=android.animation.ValueAnimator.ofFloat(0f,1f);motion.setDuration(750);
  motion.setInterpolator(new android.view.animation.AccelerateDecelerateInterpolator());
  motion.addUpdateListener(new android.animation.ValueAnimator.AnimatorUpdateListener(){public void onAnimationUpdate(android.animation.ValueAnimator a){
   float t=(Float)a.getAnimatedValue();dx=fromX+(targetX-fromX)*t;dy=fromY+(targetY-fromY)*t;invalidate();
  }});
  motion.addListener(new android.animation.AnimatorListenerAdapter(){public void onAnimationEnd(android.animation.Animator a){if(drawLock!=null && drawLock.isHeld())drawLock.release();}});
  motion.start();android.util.Log.i("LunatikAodVisual","smooth burn-in target="+targetX+","+targetY);
 }
 private static void invalidate(){for(int i=views.size()-1;i>=0;i--){View v=views.get(i).get();if(v==null){views.remove(i);continue;}
  if(v.getClass().getName().endsWith("KeyguardRootView"))v.setAlpha(aod?handoffAlpha:1f);
  if(v.getClass().getName().endsWith("DeviceEntryIconView"))v.setAlpha(hideFingerprint()?0f:1f);
  v.invalidate();
 }}
 public static float iconAlpha(float requested){return hideFingerprint()?0f:requested;}
 public static boolean hideFingerprint(){return aod && SystemClock.elapsedRealtime()>=shownUntil;}
 public static int beginClock(Canvas c,View v){
  int n=c.save();String unlockId="";try{unlockId=v.getResources().getResourceEntryName(v.getId());}catch(Exception ignored){}if(LunatikAodTransition.hideUnlockClock() && (v.getId()==largeClockId || v.getId()==smallClockId || unlockId.equals("keyguard_slice_view") || unlockId.equals("keyguard_smartspace_view") || unlockId.equals("date_smartspace_view") || unlockId.equals("bc_smartspace_view"))){c.clipRect(0,0,0,0);return n;}if(!aod)return n;
  String id="";try{id=v.getResources().getResourceEntryName(v.getId());}catch(Exception ignored){}
  if(v.getId()==largeClockId || v.getId()==smallClockId || id.equals("keyguard_slice_view") || id.equals("keyguard_smartspace_view")){mask(c,v);c.translate(dx,dy);}
  return n;
 }
 public static int begin(Canvas c,View v,boolean movable){
  int n=c.save();
  if(LunatikAodTransition.hideUnlockClock() && (v.getClass().getName().endsWith("ClockStyle") || v.getClass().getName().endsWith("AODStyle"))){c.clipRect(0,0,0,0);return n;}
  boolean notifications=v.getClass().getName().endsWith("NotificationIconContainer");
  if(notifications){try{if(!v.getResources().getResourceEntryName(v.getId()).equals("aod_notification_icon_container"))return n;}catch(Exception e){return n;}}
  if(aod){mask(c,v);if(movable && (!notifications || !pulsing))c.translate(dx,dy);}
  return n;
 }
}
