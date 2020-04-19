{ lib, ... }:

with lib.kernel;

{
  bcachefs =
    { name = "bcachefs";
      patch = ./bcachefs.patch.xz;
      extraStructuredConfig.BCACHEFS_FS = module;
      extraConfig = ''
        AIO y
        DEVMEM y

        # https://bugzilla.redhat.com/show_bug.cgi?id=1615258
        DEBUG_SG n
      '';
    };

  rt =
    { name = "rt1";
      patch = ./rt.patch.xz;
      extraStructuredConfig.PREEMPT = yes;
      extraConfig = ''
        PREEMPT_VOLUNTARY n
      '';
    };

  extra_config =
    { name = "extra-config";
      patch = null;
      extraConfig = ''
        # Disable amateur radio support
        HAMRADIO n

        # Lockdown
        SECURITY_LOCKDOWN_LSM y
        SECURITY_LOCKDOWN_LSM_EARLY y
        LOCK_DOWN_KERNEL_FORCE_NONE y
      '';
    };
}
