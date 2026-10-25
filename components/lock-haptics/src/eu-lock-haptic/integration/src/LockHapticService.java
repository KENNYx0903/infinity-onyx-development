package ru.lunatik.haptic;
import android.app.*;import android.content.*;import android.os.*;import android.provider.Settings;import android.util.Log;import java.io.*;import java.util.concurrent.*;
public class LockHapticService {
 static final String ACTION="ru.lunatik.action.LOCK_HAPTIC";static final ExecutorService WORK=Executors.newSingleThreadExecutor();static Context c;static String binary;
 static int setting(String key,int def,int user)throws Exception{return (Integer)Settings.System.class.getMethod("getIntForUser",ContentResolver.class,String.class,int.class,int.class).invoke(null,c.getContentResolver(),key,def,user);}
 static int user()throws Exception{return (Integer)ActivityManager.class.getMethod("getCurrentUser").invoke(null);}
 static String read(File f)throws Exception{try(BufferedReader r=new BufferedReader(new FileReader(f))){return r.readLine().trim();}}
 static void play(int level)throws Exception{
  File dev=null;for(File f:new File("/sys/class/input").listFiles())if(f.getName().startsWith("event"))try{if("si_haptic".equals(read(new File(f,"device/name")))){dev=f;break;}}catch(Exception ignored){}
  if(dev==null)throw new IOException("SIH event device unavailable");
  File motor=null;for(File f:new File("/sys/bus/i2c/drivers/sih_haptic_688X").listFiles())if(new File(f,"custom_wave").exists()){motor=f;break;}
  if(motor==null)throw new IOException("SIH FIFO unavailable");
  File gain=new File(motor,"gain");String original=read(gain);int old=Integer.decode(original.substring(original.indexOf('=')+1).trim());
  int magnitude=level==1?8192:level==2?16384:24576;
  try{
   java.lang.Process p=new ProcessBuilder(binary,"/dev/input/"+dev.getName(),""+magnitude,new File(motor,"custom_wave").getPath()).redirectErrorStream(true).start();
   if(!p.waitFor(1,TimeUnit.SECONDS)){p.destroyForcibly();throw new IOException("RTP timeout");}
   if(p.exitValue()!=0)throw new IOException("RTP exit="+p.exitValue());
   Log.i("LunatikLockHaptic","played ScreenLock209 intensity="+level+" magnitude="+magnitude);
  }finally{try(FileWriter w=new FileWriter(gain)){w.write(""+old);}}
 }
 public static void main(String[] args)throws Exception{
  binary=args[0];Looper.prepareMainLooper();Class<?> at=Class.forName("android.app.ActivityThread");Object t=at.getMethod("systemMain").invoke(null);c=(Context)at.getMethod("getSystemContext").invoke(t);
  if(args.length>1){play(Integer.parseInt(args[1]));return;}
  int sysui=c.getPackageManager().getPackageUid("com.android.systemui",0);
  android.net.LocalServerSocket server=new android.net.LocalServerSocket("lunatik_lock_haptic");
  Log.i("LunatikLockHaptic","ready socket; event-driven, no polling");
  while(true){try(android.net.LocalSocket socket=server.accept()){
   socket.setSoTimeout(300);int uid=socket.getPeerCredentials().getUid();if(uid!=0 && uid!=sysui)continue;
   int level=socket.getInputStream().read()-1;if(level<0||level>3)continue;
   if(level>0)play(Math.min(3,level));else Log.i("LunatikLockHaptic","disabled by system setting");
   socket.getOutputStream().write(1);
  }catch(Exception e){Log.e("LunatikLockHaptic","request failed",e);}}
 }
}
