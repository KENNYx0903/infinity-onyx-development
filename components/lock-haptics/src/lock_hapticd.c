/* Onyx ScreenLock209: event-driven native server; no libc/ART, polling or fork. */
typedef unsigned short H;typedef short S;
static long sc(long n,long a,long b,long c,long d,long e,long f){register long x0 __asm__("x0")=a,x1 __asm__("x1")=b,x2 __asm__("x2")=c,x3 __asm__("x3")=d,x4 __asm__("x4")=e,x5 __asm__("x5")=f,x8 __asm__("x8")=n;__asm__ volatile("svc 0":"+r"(x0):"r"(x1),"r"(x2),"r"(x3),"r"(x4),"r"(x5),"r"(x8):"memory");return x0;}
#define S4(n,a,b,c,d) sc(n,(long)(a),(long)(b),(long)(c),(long)(d),0,0)
static long op(char*p,long flags){return S4(56,-100,p,flags,0);}static long rd(long fd,void*p,long n){return S4(63,fd,p,n,0);}static long wr(long fd,void*p,long n){return S4(64,fd,p,n,0);}static void closefd(long fd){if(fd>=0)S4(57,fd,0,0,0);}static void nap(){long t[2]={0,100000000};S4(101,t,0,0,0);}static void logline(char*p,long n){wr(1,p,n);}
static int number(char*s){int v=0;while(*s>='0'&&*s<='9')v=v*10+*s++-'0';return v;}
static int old_gain(char*p){char b[64]={0};long fd=op(p,0);if(fd<0)return -1;long n=rd(fd,b,63);closefd(fd);if(n<1)return -1;int i=0;while(i<n&&b[i]!='=')i++;if(i==n)return -1;i++;while(b[i]==' ')i++;int base=10,v=0;if(b[i]=='0'&&b[i+1]=='x'){i+=2;base=16;}for(;i<n;i++){int c=b[i],x=c>='0'&&c<='9'?c-'0':c>='a'&&c<='f'?c-'a'+10:-1;if(x<0||x>=base)break;v=v*base+x;}return v<=255?v:-1;}
static void restore_gain(char*p,int gain){char b[4];int n=0;if(gain>=100)b[n++]=gain/100+'0';if(gain>=10)b[n++]=gain/10%10+'0';b[n++]=gain%10+'0';long f=op(p,1);if(f>=0){wr(f,b,n);closefd(f);}}
struct effect{H type;S id;H direction,button,interval,length,delay,pad;H wave,period;S magnitude,offset;H phase,attack_length,attack_level,fade_length,fade_level,pad2;unsigned int custom_len;S *custom;};
struct event{long sec,usec;H type,code;int value;};
#include "wave.h"
static int play(char*event,char*wave,char*gain,int level){
 int old=old_gain(gain);if(old<0)return 0;long fd=op(event,2);if(fd<0)return 0;long fifo=-1;int uploaded=0,started=0,ok=0;S custom[3]={197,0,100};struct effect fx={0};
 fx.type=0x51;fx.id=-1;fx.length=100;fx.wave=0x5d;fx.magnitude=level==1?8192:level==2?16384:24576;fx.custom_len=3;fx.custom=custom;
 struct event ev={0,0,0x15,0,0};if(S4(29,fd,0x40304580,&fx,0)<0)goto done;uploaded=1;ev.code=fx.id;
 fifo=op(wave,1);if(fifo<0)goto done;if(wr(fifo,bytes,4096)!=4096)goto done;closefd(fifo);fifo=-1;
 ev.value=1;if(wr(fd,&ev,sizeof(ev))!=sizeof(ev))goto done;started=1;nap();ok=1;
 done:if(started){ev.value=0;wr(fd,&ev,sizeof(ev));}if(uploaded)S4(29,fd,0x40044581,fx.id,0);closefd(fifo);closefd(fd);restore_gain(gain,old);return ok;
}
struct sockaddr_un{H family;char path[108];};struct cred{int pid;unsigned int uid,gid;};
int main(int argc,char**argv){
 if(argc!=5)return 2;int allowed=number(argv[4]);if(allowed<1000)return 3;
 S4(167,15,"lunatik_lock_hd",0,0);unsigned long action[4]={1,0,0,0};S4(134,13,action,0,8); /* ignore SIGPIPE */
 long server=S4(198,1,1|02000000,0,0);if(server<0)return 4;
 struct sockaddr_un addr={.family=1,.path="\0lunatik_lock_haptic"};
 long bound=-1;for(int i=0;i<10;i++){bound=S4(200,server,&addr,2+sizeof("\0lunatik_lock_haptic")-1,0);if(bound>=0)break;if(bound!=-98)break;nap();}if(bound<0){logline("BIND FAILED\n",12);closefd(server);return 5;} /* Abstract address, no trailing terminator. */
 if(S4(201,server,4,0,0)<0){closefd(server);return 6;}
 logline("READY native ScreenLock209\n",sizeof("READY native ScreenLock209\n")-1);
 for(;;){long peer=S4(202,server,0,0,0);if(peer<0){if(peer==-4)continue;closefd(server);return 7;}
  struct cred cred={0};unsigned int len=sizeof(cred);long got=sc(209,peer,1,17,(long)&cred,(long)&len,0);
  if(got<0||len!=sizeof(cred)||(cred.uid!=0&&cred.uid!=(unsigned int)allowed)){closefd(peer);continue;}
  long timeout[2]={0,300000};sc(208,peer,1,20,(long)timeout,sizeof(timeout),0);
  unsigned char request=0,reply=0;if(rd(peer,&request,1)==1&&request>=1&&request<=4){int level=request-1;reply=level==0?1:play(argv[1],argv[2],argv[3],level);char line[]="REQUEST level=0 result=0\n";line[14]='0'+level;line[23]='0'+reply;logline(line,sizeof(line)-1);}
  wr(peer,&reply,1);closefd(peer);
 }
}
__asm__(".global _start\n_start:\n ldr x0,[sp]\n add x1,sp,#8\n bl main\n mov x8,#93\n svc #0\n");
