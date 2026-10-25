package com.android.systemui.doze;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
public final class LunatikSleepUi {
 private static boolean sleeping;
 private static final WeakHashMap<View,Boolean> handles=new WeakHashMap<View,Boolean>();
 private static WeakReference<View> label=new WeakReference<View>(null);
 public static void registerHandle(View view){handles.put(view,Boolean.TRUE);}
 public static void registerLabel(View view){label=new WeakReference<View>(view);}
 public static boolean hideHandle(){return sleeping;}
 public static void sleep(){
  sleeping=true;
  for(View view:handles.keySet())view.invalidate();
 }
 public static void wake(){
  sleeping=false;
  for(View view:handles.keySet())view.invalidate();
 }
}
