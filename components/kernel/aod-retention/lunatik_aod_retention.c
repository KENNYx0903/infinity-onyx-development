// SPDX-License-Identifier: GPL-2.0-only
#include <linux/module.h>
#include <linux/kprobes.h>
#include <linux/atomic.h>
#include <linux/device.h>
#include <linux/platform_device.h>
#include <linux/pm_wakeup.h>
#include <asm/ptrace.h>
/* Native LP2-only retention. No private display struct access or app policy changes. */
static bool armed;
static struct device *panel;
static atomic_t panel_mode = ATOMIC_INIT(-1);
static atomic_t bypasses = ATOMIC_INIT(0);
static atomic_t retained_cycle = ATOMIC_INIT(0);
static unsigned int resumes;
static DEFINE_SPINLOCK(guard_lock);
static struct kretprobe power_probe;
struct transition { int mode; };
static int arm_set(const char *value, const struct kernel_param *kp)
{
 bool next;
 unsigned long flags;
 struct kernel_param local = *kp;
 int result;
 local.arg = &next;
 result = param_ops_bool.set(value, &local);
 if (result) return result;
 if (!panel && next) return -EINVAL;
 spin_lock_irqsave(&guard_lock, flags);
 if (!next && panel && atomic_read(&panel_mode)==2) pm_stay_awake(panel);
 WRITE_ONCE(armed,next);
 if (next && panel && atomic_read(&panel_mode)==2) pm_relax(panel);
 spin_unlock_irqrestore(&guard_lock, flags);
 return 0;
}
static int arm_get(char *buffer, const struct kernel_param *kp)
{
 return param_ops_bool.get(buffer,kp);
}
static const struct kernel_param_ops arm_ops={.set=arm_set,.get=arm_get};
module_param_cb(armed,&arm_ops,&armed,0600);
static int power_entry(struct kretprobe_instance *instance, struct pt_regs *regs)
{
 struct transition *transition = (void *)instance->data;
 /* Third argument is opaque dsi_display*, matched to public device drvdata. */
 if ((void *)regs->regs[2] != dev_get_drvdata(panel)) return 1;
 transition->mode = (int)regs->regs[1];
 return 0;
}
static int power_return(struct kretprobe_instance *instance, struct pt_regs *regs)
{
 struct transition *transition = (void *)instance->data;
 unsigned long flags;
 if ((long)regs->regs[0]) return 0;
 spin_lock_irqsave(&guard_lock, flags);
 atomic_set(&panel_mode, transition->mode);
 if (transition->mode == 2 && READ_ONCE(armed) && !READ_ONCE(power_probe.nmissed)) {
  pm_relax(panel);
  pr_info("lunatik_aod_guard: LP2 confirmed; display wake source released\n");
 }
 spin_unlock_irqrestore(&guard_lock, flags);
 return 0;
}
NOKPROBE_SYMBOL(power_entry);
NOKPROBE_SYMBOL(power_return);
static int retention_pre(struct kprobe *probe, struct pt_regs *regs)
{
 if (!READ_ONCE(armed) || atomic_read(&panel_mode)!=2)
  return 0;
 if (READ_ONCE(power_probe.nmissed)) {
  /* Unknown transition history: preserve the panel and stop future autosuspend. */
  pm_stay_awake(panel);
  regs->regs[0]=(unsigned long)-EBUSY;
  instruction_pointer_set(regs,regs->regs[30]);
  pr_warn_once("lunatik_aod_guard: missed power transition; retaining native wake protection\n");
  return 1;
 }
 atomic_set(&retained_cycle,1);
 atomic_inc(&bypasses);
 regs->regs[0]=0;
 instruction_pointer_set(regs,regs->regs[30]);
 pr_info("lunatik_aod_guard: LP2 retention hit %d\n",atomic_read(&bypasses));
 return 1;
}
NOKPROBE_SYMBOL(retention_pre);
static int resume_pre(struct kprobe *probe, struct pt_regs *regs)
{
 /* Pair with the actual retained suspend, even if armed/mode changed meanwhile. */
 if (!atomic_xchg(&retained_cycle,0)) return 0;
 resumes++;
 regs->regs[0]=0;
 instruction_pointer_set(regs,regs->regs[30]);
 pr_info("lunatik_aod_guard: retained resume %u\n",resumes);
 return 1;
}
NOKPROBE_SYMBOL(resume_pre);
static struct kprobe resume_probe={.symbol_name="sde_kms_pm_resume",.pre_handler=resume_pre};
static struct kprobe probe={.symbol_name="sde_kms_pm_suspend",.pre_handler=retention_pre};
static struct kretprobe power_probe={.kp.symbol_name="dsi_display_set_power",.entry_handler=power_entry,.handler=power_return,.data_size=sizeof(struct transition),.maxactive=64};
static int __init retention_init(void)
{
 int result;
 if(armed)return -EINVAL;
 panel=bus_find_device_by_name(&platform_bus_type,NULL,"soc:qcom,dsi-display-primary");
 if(!panel)return -ENODEV;
 if(!dev_get_drvdata(panel)){result=-ENODEV;goto put;}
 result=register_kprobe(&probe);
 if(result)goto put;
 result=register_kprobe(&resume_probe);
 if(result){unregister_kprobe(&probe);goto put;}
 result=register_kretprobe(&power_probe);
 if(result){unregister_kprobe(&resume_probe);unregister_kprobe(&probe);goto put;}
 pr_info("lunatik_aod_guard: DISARMED, LP2-gated, no diagnostic timeout or use cap\n");
 return 0;
put:
 put_device(panel);return result;
}
static void __exit retention_exit(void)
{
 arm_set("N",&(struct kernel_param){.arg=&armed});
 unregister_kretprobe(&power_probe);
 unregister_kprobe(&probe);
 unregister_kprobe(&resume_probe);
 put_device(panel);
 pr_info("lunatik_aod_guard: removed; hits=%d missed=%d\n",atomic_read(&bypasses),power_probe.nmissed);
}
module_init(retention_init);
module_exit(retention_exit);
MODULE_LICENSE("GPL");
MODULE_AUTHOR("lunatik_kenny");
MODULE_DESCRIPTION("Experimental paired LP2 retention; long-duration validation required");
