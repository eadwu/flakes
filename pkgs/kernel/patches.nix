{ lib, ... }:

with lib.kernel;

{
  bcachefs =
    {
      name = "bcachefs";
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

  zfs =
    {
      name = "zfs";
      patch = ./zen-zswap.patch.xz;
      extraStructuredConfig = with lib.kernel; {
        AIO = yes;
        DEVMEM = yes;

        # Make sure Zen adjustments are applied
        ZEN_INTERACTIVE = yes;

        # Don't compile as modules since zswap starts before modules are loaded
        CRYPTO_LZ4 = yes;
        LZ4_COMPRESS = yes;
        Z3FOLD = yes;
      };
      extraConfig = ''
        # https://bugzilla.redhat.com/show_bug.cgi?id=1615258
        DEBUG_SG n
      '';
    };

  rt =
    {
      name = "realtime";
      patch = null;
      extraStructuredConfig.PREEMPT = yes;
      extraConfig = ''
        PREEMPT_VOLUNTARY n
      '';
    };

  o3 =
    {
      name = "optimize-o3";
      patch = ./optimize-o3.patch.xz;
      extraStructuredConfig = {
        CC_OPTIMIZE_FOR_PERFORMANCE_O3 = yes;
      };
    };

  xanmod =
    {
      name = "xanmod";
      patch = ./xanmod.patch.xz;
      extraStructuredConfig = {
        # RCU
        RCU_EXPERT = yes;
        RCU_BOOST = yes;
        RCU_BOOST_DELAY = freeform "0";
        RCU_NOCB_CPU = yes;

        # Timer
        HZ_100 = yes;
        HZ_1000 = no;
        HZ = freeform "100";
      };
    };

  bmq =
    {
      name = "bmq";
      patch = ./bmq.patch.xz;
      extraStructuredConfig = {
        SCHED_BMQ = yes;
      };
    };

  enable-fsgsbase-instructions =
    {
      name = "enable-fsgsbase-instructions";
      patch = ./enable-fsgsbase-instructions.patch.xz;
    };

  extra_config =
    {
      name = "extra-config";
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
        MODULE_SIG_FORCE = yes;
        MODULE_SIG_ALL = yes;
        MODULE_SIG_SHA512 = yes;
        MODULE_SIG_HASH = freeform "sha512";
        MODULE_SIG_KEY = freeform "certs/signing_key.pem";

        # Remove additional attack surface, unless you really need them.
        # IA32_EMULATION = no;
      };
      extraConfig = ''
        # Easily confused by misconfigured userspace, keep off.
        BINFMT_MISC n
      '';
    };
}
