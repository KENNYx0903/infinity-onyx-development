# AOD retention module

GPL-2.0-only source used by the accepted existing onyx AOD path. This module is tied to a particular kernel/display implementation. It uses kernel probes and must be reviewed against exact symbols, power sequencing, config and ABI. R8 did not replace the boot kernel.

Do not port by uname string alone. Provide matching kernel sources/headers and normal module build infrastructure, integrate the specific init/SELinux policy and retain rollback on a test device. Experimental LP-11 and DSI clock patches are not part of this component.
