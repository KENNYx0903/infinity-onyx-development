from pathlib import Path
import math,bisect,re,json,xml.etree.ElementTree as ET
class MonotoneSpline:
 def __init__(self,x,y):
  self.x=list(x);self.y=list(y);n=len(x);d=[(y[i+1]-y[i])/(x[i+1]-x[i]) for i in range(n-1)]
  m=[d[0]]+[(d[i-1]+d[i])*0.5 for i in range(1,n-1)]+[d[-1]]
  for i,z in enumerate(d):
   if z==0:m[i]=m[i+1]=0
   else:
    a=m[i]/z;b=m[i+1]/z;h=math.hypot(a,b)
    if h>3:
     t=3/h;m[i]=t*a*z;m[i+1]=t*b*z
  self.m=m
 def __call__(self,v):
  x,y,m=self.x,self.y,self.m
  if v<=x[0]:return y[0]
  if v>=x[-1]:return y[-1]
  i=bisect.bisect_right(x,v)-1;h=x[i+1]-x[i];t=(v-x[i])/h
  return (y[i]*(1+2*t)+h*m[i]*t)*(1-t)*(1-t)+(y[i+1]*(3-2*t)+h*m[i+1]*(t-1))*t*t
 def inverse(self,v):
  lo,hi=self.x[0],self.x[-1]
  for _ in range(60):
   mid=(lo+hi)/2
   if self(mid)<v:lo=mid
   else:hi=mid
  return (lo+hi)/2
s=Path('work/displayconfig-before-slider.xml').read_text();root=ET.fromstring(s)
pts=root.find('screenBrightnessMap').findall('point');raw=[float(p.findtext('value')) for p in pts];nits=[float(p.findtext('nits')) for p in pts]
assert len(raw)==3 and nits==[2.,800.,3200.]
bmin,bmax=raw[0],raw[-1];norm=[(b-bmin)/(bmax-bmin) for b in raw]
fwd=MonotoneSpline(nits,norm);oldreverse=MonotoneSpline(norm,nits)
bs=sorted(set([i/1024 for i in range(1025)]+norm))
ns=[fwd.inverse(b) for b in bs];ns[0]=nits[0];ns[-1]=nits[-1]
rawdense=[bmin+b*(bmax-bmin) for b in bs]
newfwd=MonotoneSpline(ns,bs);newreverse=MonotoneSpline(bs,ns)
errOld=max(abs(fwd(oldreverse(i/10000))-i/10000) for i in range(10001))
errNew=max(abs(newfwd(newreverse(i/10000))-i/10000) for i in range(10001))
curveErr=max(abs(newfwd(i*.32)-fwd(i*.32)) for i in range(10001))
print('Old round-trip 0.14 ->',fwd(oldreverse(.14)))
print('New round-trip 0.14 ->',newfwd(newreverse(.14)))
print('Worst old round-trip error:',errOld,'new:',errNew,'forward curve error:',curveErr)
assert errNew<2e-6 and curveErr<2e-6
lines=['    <screenBrightnessMap>']
for a,b in zip(rawdense,ns):lines += ['        <point>',f'            <value>{a:.10f}</value>',f'            <nits>{b:.7f}</nits>','        </point>']
lines+=['    </screenBrightnessMap>'];replacement='\n'.join(lines)
pat=r'    <screenBrightnessMap>.*?</screenBrightnessMap>'
s2,count=re.subn(pat,replacement,s,count=1,flags=re.S);assert count==1
# All non-calibration XML content is byte-identical.
assert re.sub(pat,'MAP',s,flags=re.S)==re.sub(pat,'MAP',s2,flags=re.S)
ET.fromstring(s2)
Path('work/displayconfig-calibrated.xml').write_text(s2)
Path('work/brightness-calibration-validation.json').write_text(json.dumps({'points':len(bs),'old_roundtrip_014':fwd(oldreverse(.14)),'new_roundtrip_014':newfwd(newreverse(.14)),'max_old_error':errOld,'max_new_error':errNew,'max_original_curve_deviation':curveErr},indent=2))
print('Calibration points',len(bs))
