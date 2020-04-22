{ lib, ... }:

with lib.kernel;

{
  bcachefs =
    { name = "bcachefs";
      patch = ./bcachefs.patch.xz;
      extraStructuredConfig = {
        BCACHEFS_FS = module;

        AIO = yes;
        DEVMEM = yes;
      };
      extraConfig = ''
        # https://bugzilla.redhat.com/show_bug.cgi?id=1615258
        DEBUG_SG n
      '';
    };

  rt =
    { name = "rt3";
      patch = ./rt.patch.xz;
      extraStructuredConfig = {
        EXPERT = yes;
        PREEMPT = yes;
        PREEMPT_RT = yes;
        HAVE_PREEMPT_LAZY = yes;
        PREEMPT_VOLUNTARY = no;
      };
    };

  extra_config =
    { name = "extra-config";
      patch = null;
      extraStructuredConfig = {
        # Disable amateur radio support
        HAMRADIO = no;

        ## Lockdown
        SECURITY_LOCKDOWN_LSM = yes;
        SECURITY_LOCKDOWN_LSM_EARLY = yes;
        LOCK_DOWN_KERNEL_FORCE_NONE = yes;
      };
    };
}
