package com.android.systemui.doze;
import android.service.dreams.DreamService;import android.os.*;import android.util.Log;import android.animation.*;import java.lang.reflect.*;
public final class PocketResume120 {
 private static boolean initial;private static int generation;private static final Handler H=new Handler(Looper.getMainLooper());
 public static boolean isInitial(){return initial;}
 public static void resume(){initial=true;generation++;}
 public static int adjust(DreamService s,int state){if(state!=3&&state!=4){initial=false;generation++;return state;}return initial?2:state;}
 static Class<?> visual()throws Exception{return Class.forName("com.android.systemui.doze.LunatikAodVisual");}
 static void alpha(float a)throws Exception{Field f=visual().getDeclaredField("handoffAlpha");f.setAccessible(true);f.setFloat(null,a);Method m=visual().getDeclaredMethod("invalidate");m.setAccessible(true);m.invoke(null);}
 public static void startVisual(){final int token=generation;try{Class<?> t=Class.forName("com.android.systemui.doze.LunatikAodTransition");Field f=t.getDeclaredField("activeService");f.setAccessible(true);DreamService s=(DreamService)f.get(null);s.getClass().getMethod("lunatikApplyScreenState",int.class).invoke(s,2);alpha(1);Log.i("PocketResume120","Initial AOD shown for 2500ms");}catch(Exception e){Log.w("PocketResume120","Initial stage",e);finish(token);return;}
 H.postDelayed(()->{if(token!=generation||!initial)return;ValueAnimator a=ValueAnimator.ofFloat(1,0);a.setDuration(180);a.setInterpolator(new android.view.animation.AccelerateDecelerateInterpolator());a.addUpdateListener(v->{try{alpha((Float)v.getAnimatedValue());}catch(Exception e){Log.w("PocketResume120","Fade",e);}});a.addListener(new AnimatorListenerAdapter(){public void onAnimationEnd(Animator a){finish(token);}});a.start();},2500);}
 static void finish(int token){if(token!=generation)return;initial=false;try{Method m=visual().getDeclaredMethod("hiddenFrame");m.setAccessible(true);m.invoke(null);Log.i("PocketResume120","Fade complete; normal 30Hz handoff");}catch(Exception e){Log.w("PocketResume120","Handoff",e);}}
}
