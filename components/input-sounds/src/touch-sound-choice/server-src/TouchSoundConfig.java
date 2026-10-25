package com.android.server.audio;
import android.content.Context;import android.provider.Settings;import android.util.Log;import java.io.File;
public final class TouchSoundConfig {
 static Context context;
 public static void init(Context c){context=c;}
 public static String path(String original){if(context==null||!original.endsWith("/Effect_Tick.ogg"))return original;try{int mode=Settings.Global.getInt(context.getContentResolver(),"lunatik_touch_sound",0);String path=mode==1?"/product/media/audio/ui/Effect_Tick_Xiaomi.ogg":mode==2?"/product/media/audio/ui/Effect_Tick_AOSP.ogg":original;if(!new File(path).isFile())return original;Log.i("TouchSoundConfig","Loading touch sound mode="+mode+" path="+path);return path;}catch(Exception e){Log.w("TouchSoundConfig","Using default touch sound",e);return original;}}
}
