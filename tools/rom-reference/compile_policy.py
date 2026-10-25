from pathlib import Path
import subprocess
r=Path('work/rom-audit');b=Path('work/rom-build-r8')
inputs=[r/'system/system/etc/selinux/plat_sepolicy.cil',r/'system/system/etc/selinux/mapping/202504.cil',r/'system/system/etc/selinux/plat_sepolicy_genfs_202504.cil',r/'system_ext/etc/selinux/system_ext_sepolicy.cil',r/'system_ext/etc/selinux/mapping/202504.cil',r/'product/etc/selinux/product_sepolicy.cil',r/'product/etc/selinux/mapping/202504.cil',r/'vendor/etc/selinux/vendor_sepolicy.cil',r/'vendor/etc/selinux/plat_pub_versioned.cil',b/'panel-guard.cil']
subprocess.run([str(b/'compile_cil'),str(b/'sepolicy.compiled'),*[str(p) for p in inputs if p.exists()]],check=True)
