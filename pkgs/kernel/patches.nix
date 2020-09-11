{ lib, ... }:

with lib.kernel;

let
  # lower than lib.mkForce (50) to enforce changes
  mkForce = lib.mkOverride 36;
in {
  bcachefs =
    {
      name = "bcachefs";
      patch = ./bcachefs.patch.xz;
      extraStructuredConfig = {
        BCACHEFS_FS = module;
        # https://bugzilla.redhat.com/show_bug.cgi?id=1615258
        DEBUG_SG = mkForce no;
      };
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
        # Kernel compression algorithm
        KERNEL_XZ = mkForce no;
        KERNEL_LZ4 = mkForce no;
        KERNEL_ZSTD = mkForce yes;

        # RCU
        RCU_EXPERT = yes;
        RCU_BOOST = yes;
        RCU_BOOST_DELAY = freeform "0";
        RCU_NOCB_CPU = yes;

        # Timer
        HZ_100 = yes;
        HZ_1000 = mkForce no;
        HZ = freeform "100";
      };
    };

  zen-tweaks =
    {
      name = "zen-tweaks";
      patch = ./zen-tweaks.patch.xz;
      extraStructuredConfig.ZEN_INTERACTIVE = yes;
    };

  extra-config =
    {
      name = "extra-config";
      patch = null;
      extraStructuredConfig = {
        # Make sure these are enabled, needed by a variety of things such as cryptsetup
        AIO = yes;
        DEVMEM = yes;
        # Harden /dev/mem since DEVMEM is needed
        STRICT_DEVMEM = yes;
        IO_STRICT_DEVMEM = yes;

        # Disable amateur radio support
        HAMRADIO = mkForce no;

        # Disable old sysfs interface for UEFI Runtime Variables Support
        EFI_VARS = mkForce no;

        # Enable TEO cpuidle governor
        CPU_IDLE_GOV_TEO = yes;

        # Enable thermal "pressure" support for the scheduler
        SCHED_THERMAL_PRESSURE = yes;

        ## CPUFreq
        CPU_FREQ_GOV_PERFORMANCE = yes;
        CPU_FREQ_GOV_POWERSAVE = yes;
        CPU_FREQ_GOV_SCHEDUTIL = mkForce yes;

        ## Zram
        CRYPTO_ZSTD = yes;
        ZSTD_COMPRESS = yes;

        ## Zswap
        ZSWAP_COMPRESSOR_DEFAULT_LZ4 = yes;
        ZSWAP_COMPRESSOR_DEFAULT = freeform "lz4";

        ZSWAP_DEFAULT_ON = yes;

        ZSWAP_ZPOOL_DEFAULT_Z3FOLD = yes;
        ZSWAP_ZPOOL_DEFAULT = freeform "z3fold";

        # Don't compile as modules since zswap starts before modules are loaded
        CRYPTO_LZ4 = yes;
        LZ4_COMPRESS = yes;
        Z3FOLD = yes;

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
        KEXEC = mkForce no;

        # Dangerous; enabling this allows replacement of running kernel.
        HIBERNATION = mkForce no;

        # But if CONFIG_MODULE=y is needed, at least they must be signed with a per-build key.
        MODULE_SIG = yes;
        # MODULE_SIG_FORCE = yes;
        MODULE_SIG_ALL = yes;
        MODULE_SIG_SHA512 = yes;
        MODULE_SIG_HASH = freeform "sha512";
        MODULE_SIG_KEY = freeform "certs/signing_key.pem";

        # Remove additional attack surface, unless you really need them.
        # IA32_EMULATION = mkForce no;

        # Easily confused by misconfigured userspace, keep off.
        BINFMT_MISC = mkForce no;

        ## LKRG
        KALLSYMS_ALL = yes;
      };
    };
}
