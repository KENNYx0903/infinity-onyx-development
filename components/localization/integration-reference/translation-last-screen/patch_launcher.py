from pathlib import Path
import struct,json
def patch_launcher(raw):
 code=Path('work/ru-translation-apply/patch.py').read_text();ns={'struct':struct};exec(code[code.index('def chunks'):code.index('bt=Path(')],ns)
 rows=json.loads(Path('work/translation-last-screen/verification.json').read_text())['rows']
 return ns['patch'](raw,rows)[0]
