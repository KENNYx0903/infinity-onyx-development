from pathlib import Path
import re,json,subprocess,xml.etree.ElementTree as E
D=Path(__file__).resolve().parent;BT=Path('${ANDROID_TOOLS_ROOT}/sdk/build-tools/36.0.0');items=json.loads((D/'capture.json').read_text());catalog=Path('/tmp/lunatik-permissions-catalog.txt').read_text();raw=Path('/tmp/lunatik-google-packages.txt').read_text();priv={}
for m in re.finditer(r'(?ms)^\+ permission:(\S+)\n(.*?)(?=^\+ permission:|\Z)',catalog):
 if re.search(r'protectionLevel:.*\bprivileged\b',m[2]):priv[m[1]]=m[2]
existing={}
for f in Path('work/rom-audit/product/etc/permissions').glob('*.xml'):
 try:tree=E.parse(f)
 except E.ParseError:continue
 for g in tree.findall('.//privapp-permissions'):
  pkg=g.get('package');table=existing.setdefault(pkg,{})
  for child in g:
   if child.tag in ['permission','deny-permission']:table[child.get('name')]=child.tag
root=E.Element('permissions');report=[]
for it in items:
 if '/priv-app/' not in it['original']['path']:continue
 pkg=it['package'];m=re.search(r'(?m)^  Package \['+re.escape(pkg)+r'\].*',raw);b=re.split(r'(?m)^  Package \[|^Hidden system packages:',raw[m.end():],maxsplit=1)[0]
 granted=set(re.findall(r'^      (\S+): granted=true',b,re.M))
 p=D/'captured'/pkg/'base.apk';badging=subprocess.run([str(BT/'aapt2'),'dump','permissions',str(p)],capture_output=True,text=True,check=True).stdout;requested=set(re.findall(r"uses-permission[^\n]*name='([^']+)'",badging))
 needed=sorted((requested&priv.keys())-existing.get(pkg,{}).keys());group=E.SubElement(root,'privapp-permissions',{'package':pkg});allowed=[];denied=[]
 for permission in needed:
  yes=permission in granted
  E.SubElement(group,'permission' if yes else 'deny-permission',{'name':permission});(allowed if yes else denied).append(permission)
 report.append({'package':pkg,'allow_currently_granted':allowed,'deny_currently_not_granted':denied,'existing_declarations_preserved':len((requested&priv.keys())&existing.get(pkg,{}).keys())})
E.indent(root,space='    ');dest=D/'privapp-permissions-lunatik-google-updates.xml';E.ElementTree(root).write(dest,encoding='utf-8',xml_declaration=True);(D/'permission-audit.json').write_text(json.dumps(report,indent=2));print('Preserved current privileged permission grants:',[(x['package'],len(x['allow_currently_granted']),len(x['deny_currently_not_granted'])) for x in report])
