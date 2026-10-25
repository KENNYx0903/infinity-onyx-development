/* Safe staged bring-up additions by lunatik_kenny. GPL-2.0-only. */
#ifndef LUNATIK_SUSFS_LAYERS_H
#define LUNATIK_SUSFS_LAYERS_H
#ifndef __KERNEL__
#include <stdbool.h>
#endif
enum lunatik_layer {
 LAYER_UMOUNT_GATE, LAYER_ALLOW_GATE, LAYER_LSM, LAYER_PATH,
 LAYER_OPATH, LAYER_DIRENT, LAYER_UNAME, LAYER_KSTAT,
 LAYER_MAP, LAYER_MOUNT, LAYER_CMDLINE, LAYER_REDIRECT,
 LAYER_LOG, LAYER_AVC, LAYER_SUPERCALL, LAYER_SYMBOLS, LAYER_COUNT
};
#define LUNATIK_BIT(n) (1u << (n))
#define LUNATIK_BASE (LUNATIK_BIT(LAYER_UMOUNT_GATE) | LUNATIK_BIT(LAYER_ALLOW_GATE) | LUNATIK_BIT(LAYER_SUPERCALL))
static inline bool lunatik_layers_valid(unsigned int mask)
{
 if (mask & ~((1u << LAYER_COUNT) - 1)) return false;
 if ((mask & LUNATIK_BASE) != LUNATIK_BASE) return false;
 if ((mask & LUNATIK_BIT(LAYER_PATH)) && !(mask & LUNATIK_BIT(LAYER_LSM))) return false;
 if ((mask & (LUNATIK_BIT(LAYER_OPATH) | LUNATIK_BIT(LAYER_DIRENT) | LUNATIK_BIT(LAYER_KSTAT) | LUNATIK_BIT(LAYER_SYMBOLS))) && !(mask & LUNATIK_BIT(LAYER_PATH))) return false;
 return true;
}
#ifdef __KERNEL__
extern unsigned int lunatik_live_layers;
static inline bool lunatik_layer_active(enum lunatik_layer layer)
{
 return (READ_ONCE(lunatik_live_layers) & LUNATIK_BIT(layer)) != 0;
}
#endif
#endif
