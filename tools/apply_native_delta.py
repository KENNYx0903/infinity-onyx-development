#!/usr/bin/env python3
"""Apply a small hash-bound native delta to a caller-provided exact binary."""
import argparse,hashlib,json
from pathlib import Path
p=argparse.ArgumentParser(description=__doc__)
p.add_argument('recipe',type=Path);p.add_argument('input',type=Path);p.add_argument('output',type=Path)
a=p.parse_args();r=json.loads(a.recipe.read_text());data=bytearray(a.input.read_bytes())
if a.output.exists():p.error('Output already exists; refusing to overwrite')
if len(data)!=r['bytes'] or hashlib.sha256(data).hexdigest()!=r['base_sha256']:p.error('Unknown input; exact baseline SHA-256 is required')
last=0
for h in r['hunks']:
 offset=h['offset'];before=bytes.fromhex(h['before']);after=bytes.fromhex(h['after'])
 if offset<last or len(before)!=len(after) or offset+len(before)>len(data):p.error('Invalid/overlapping delta span')
 if data[offset:offset+len(before)]!=before:p.error('Delta preimage mismatch')
 data[offset:offset+len(before)]=after;last=offset+len(before)
if hashlib.sha256(data).hexdigest()!=r['result_sha256']:p.error('Output hash mismatch; nothing written')
# Exclusive creation also prevents races with a newly appearing output path.
with a.output.open('xb') as f:f.write(data)
print('Verified output SHA-256:',r['result_sha256'])
