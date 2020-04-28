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
    { name = "realtime";
      patch = null;
      extraStructuredConfig = {
        EXPERT = yes;
        PREEMPT = yes;
        HAVE_PREEMPT_LAZY = yes;
      };
      extraConfig = ''
        PREEMPT_VOLUNTARY n
      '';
    };

  bmq =
    { name = "bmq";
      patch = ./bmq.patch.xz;
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

        ## Hardened
        # Wipe slab and page allocations (since v5.3)
        # Instead of "slub_debug=P" and "page_poison=1", a single place can control memory allocation wiping now.
        # The init_on_free is only needed if there is concern about minimizing stale data lifetime.
        INIT_ON_ALLOC_DEFAULT_ON = yes;
        INIT_ON_FREE_DEFAULT_ON = yes;

        # Dangerous; enabling this allows replacement of running kernel.
        KEXEC = no;

        # Dangerous; enabling this allows replacement of running kernel.
        HIBERNATION = no;

        # But if CONFIG_MODULE=y is needed, at least they must be signed with a per-build key.
        MODULE_SIG = yes;
        # MODULE_SIG_FORCE = yes;
        MODULE_SIG_ALL = yes;
        MODULE_SIG_SHA512 = yes;
        MODULE_SIG_HASH = freeform "sha512";
        MODULE_SIG_KEY = freeform "certs/signing_key.pem";

        # Remove additional attack surface, unless you really need them.
        # IA32_EMULATION = no;

        # Timer
        HZ_250 = yes;
        HZ_1000 = no;
        HZ = freeform "250";
      };
      extraConfig = ''
        # Easily confused by misconfigured userspace, keep off.
        BINFMT_MISC n
      '';
    };
}
