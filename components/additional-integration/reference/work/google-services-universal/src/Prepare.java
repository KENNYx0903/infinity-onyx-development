import android.content.*;
import android.content.pm.*;
import android.os.*;
import java.io.*;
import java.nio.file.*;
import java.security.*;
import java.util.*;
import javax.xml.parsers.*;
import org.w3c.dom.*;

public class Prepare {
 static final String PKG="com.google.android.gms", ROLE="android.permission.GET_ROLE_HOLDERS";
 static final String CERT="5f2391277b1dbd489000467e4c2fa6af802430080457dce2f618992e9dfb5402";
 static void require(boolean b,String m) throws Exception {if(!b)throw new Exception(m);}
 static String hash(byte[] b)throws Exception{StringBuilder s=new StringBuilder();for(byte x:MessageDigest.getInstance("SHA-256").digest(b))s.append(String.format("%02x",x&255));return s.toString();}
 static String fileHash(File f)throws Exception {MessageDigest d=MessageDigest.getInstance("SHA-256");try(InputStream i=new FileInputStream(f)){byte[] b=new byte[65536];int n;while((n=i.read(b))>0)d.update(b,0,n);}StringBuilder s=new StringBuilder();for(byte x:d.digest())s.append(String.format("%02x",x&255));return s.toString();}
 static List<String> paths(PackageInfo p){List<String> a=new ArrayList<>();a.add(p.applicationInfo.sourceDir);if(p.applicationInfo.splitSourceDirs!=null)a.addAll(Arrays.asList(p.applicationInfo.splitSourceDirs));Collections.sort(a);return a;}
 static Set<String> requested(PackageInfo p){return p.requestedPermissions==null?new HashSet<>():new HashSet<>(Arrays.asList(p.requestedPermissions));}
 static void scan(File dir,Set<String> denied)throws Exception{
  File[] files=dir.listFiles();if(files==null)return;
  DocumentBuilderFactory f=DocumentBuilderFactory.newInstance();f.setFeature("http://apache.org/xml/features/disallow-doctype-decl",true);
  for(File x:files)if(x.getName().endsWith(".xml")){
   Document d=f.newDocumentBuilder().parse(x);NodeList list=d.getElementsByTagName("privapp-permissions");
   for(int i=0;i<list.getLength();i++){Element e=(Element)list.item(i);if(!PKG.equals(e.getAttribute("package")))continue;NodeList ns=e.getElementsByTagName("deny-permission");for(int j=0;j<ns.getLength();j++)denied.add(((Element)ns.item(j)).getAttribute("name"));}
  }
 }
 public static void main(String[] args){try{run(args);}catch(Throwable e){System.err.println("INSTALL STOPPED: "+e);System.exit(1);}}
 static void run(String[] args)throws Exception {
  require(Build.VERSION.SDK_INT>=29,"Android 10 or newer required");require(args.length==1,"Missing private module directory");
  File mod=new File(args[0]).getCanonicalFile();require(mod.isDirectory()&&mod.getPath().startsWith("/data/adb/"),"Unsafe staging directory");
  if(Looper.getMainLooper()==null)Looper.prepareMainLooper();Class<?> at=Class.forName("android.app.ActivityThread");Object thread=at.getMethod("systemMain").invoke(null);Context ctx=(Context)at.getMethod("getSystemContext").invoke(thread);PackageManager pm=ctx.getPackageManager();
  int flags=PackageManager.GET_PERMISSIONS|PackageManager.GET_SIGNING_CERTIFICATES;
  PackageInfo active=pm.getPackageInfo(PKG,flags), factory=pm.getPackageInfo(PKG,flags|0x200000);
  require(active.signingInfo!=null&&!active.signingInfo.hasMultipleSigners(),"Unsupported GMS signing identity");
  boolean google=false;for(android.content.pm.Signature s:active.signingInfo.getSigningCertificateHistory())if(CERT.equals(hash(s.toByteArray())))google=true;
  require(google,"GMS is not signed with the supported Google certificate");
  String factoryFile=new File(factory.applicationInfo.sourceDir).getCanonicalPath();String partition=null, relative=null;
  for(String root:new String[]{"/system_ext","/product","/system"})if(factoryFile.startsWith(root+"/priv-app/")){partition=root;relative=factoryFile.substring(root.length());break;}
  require(partition!=null,"Factory GMS must be in system/product/system_ext priv-app");
  require(requested(active).contains(ROLE),"Installed GMS does not request GET_ROLE_HOLDERS; this fix does not apply");
  PermissionInfo role=pm.getPermissionInfo(ROLE,0);require((role.protectionLevel&PermissionInfo.PROTECTION_FLAG_PRIVILEGED)!=0,"ROM permission model is unsupported");
  Set<String> denied=new HashSet<>();scan(new File(partition+"/etc/permissions"),denied);scan(new File(partition+"/etc/sysconfig"),denied);
  require(!denied.contains(ROLE),"ROM explicitly denies GET_ROLE_HOLDERS; will not override its policy");
  String overlay=partition.equals("/system")?"system":"system"+partition;
  boolean promote=!requested(factory).contains(ROLE);
  Set<String> grants=new TreeSet<>();grants.add(ROLE);
  if(promote)for(String name:requested(active)){try{PermissionInfo p=pm.getPermissionInfo(name,0);if("android".equals(p.packageName)&&(p.protectionLevel&PermissionInfo.PROTECTION_FLAG_PRIVILEGED)!=0&&!denied.contains(name))grants.add(name);}catch(PackageManager.NameNotFoundException ignored){}}
  File xml=new File(mod,overlay+"/etc/permissions/privapp-permissions-lunatik-google-role.xml");require(xml.getParentFile().mkdirs(),"Cannot create permissions directory");
  try(PrintWriter out=new PrintWriter(xml,"UTF-8")){out.println("<?xml version=\"1.0\" encoding=\"utf-8\"?><permissions><privapp-permissions package=\""+PKG+"\">");for(String s:grants){require(s.matches("[A-Za-z0-9_.]+"),"Invalid permission name");out.println("<permission name=\""+s+"\"/>");}out.println("</privapp-permissions></permissions>");}
  if(promote){
   File app=new File(mod,overlay+new File(relative).getParent());require(app.mkdirs(),"Cannot create APK directory");
   List<String> before=paths(active);Map<String,String> hashes=new TreeMap<>();Set<String> names=new HashSet<>();
   for(String path:before){File source=new File(path).getCanonicalFile();require(source.isFile()&&(source.getPath().startsWith("/data/app/")||source.getPath().startsWith(partition+"/priv-app/")),"Unsupported APK location");require(names.add(source.getName()),"Duplicate APK name");String h=fileHash(source);File copy=new File(app,source.getName());Files.copy(source.toPath(),copy.toPath());require(h.equals(fileHash(copy))&&h.equals(fileHash(source)),"APK changed during copy");hashes.put(source.getName(),h);}
   PackageInfo after=pm.getPackageInfo(PKG,flags);require(active.getLongVersionCode()==after.getLongVersionCode()&&before.equals(paths(after)),"GMS updated during installation; retry");
   // Replacement prevents old factory splits from being mixed with this complete signed set.
   require(new File(app,".replace").createNewFile(),"Cannot mark complete APK replacement");
   try(PrintWriter out=new PrintWriter(new File(mod,"snapshot-sha256.txt"),"UTF-8")){for(Map.Entry<String,String> e:hashes.entrySet())out.println(e.getValue()+"  "+e.getKey());}
  }
  try(PrintWriter out=new PrintWriter(new File(mod,"installation.txt"),"UTF-8")){out.println("GMS "+active.versionName+" ("+active.getLongVersionCode()+")");out.println("Factory path: "+factoryFile);out.println("Signed APK snapshot: "+promote);out.println("Allowlisted requested platform permissions: "+grants.size());out.println("Existing explicit denials preserved: "+denied.size());}
  System.out.println("Prepared successfully. APK snapshot="+promote+"; permissions="+grants.size()+". Reboot required.");
 }
}
