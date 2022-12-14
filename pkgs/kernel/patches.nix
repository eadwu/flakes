{ lib, ... }:

with lib.kernel;

let
  # lower than lib.mkForce (50) to enforce changes
  mkForce = lib.mkOverride 36;
in
{
  bcachefs =
    {
      name = "bcachefs";
      patch = ./bcachefs.patch.xz;
      extraStructuredConfig = {
        BCACHEFS_FS = yes;
        BCACHEFS_QUOTA = yes;
        BCACHEFS_POSIX_ACL = yes;

        # https://bugzilla.redhat.com/show_bug.cgi?id=1615258
        DEBUG_SG = mkForce no;
      };
    };

  extra-config =
    {
      name = "extra-config";
      patch = null;
      extraStructuredConfig = {
        # Welcome to the dark side ~
        EXPERT = yes;

        # Make sure these are enabled, needed by a variety of things such as cryptsetup
        AIO = mkForce yes;
        DEVMEM = mkForce yes;
        # Harden /dev/mem since DEVMEM is needed
        STRICT_DEVMEM = option yes;
        IO_STRICT_DEVMEM = option yes;

        # General Improvements
        IO_DELAY_NONE = yes;

        # Disable amateur radio support
        HAMRADIO = mkForce no;

        # Disable old sysfs interface for UEFI Runtime Variables Support
        EFI_VARS = mkForce no;

        # Enable TEO cpuidle governor
        CPU_IDLE_GOV_TEO = yes;

        # Enable thermal "pressure" support for the scheduler
        SCHED_THERMAL_PRESSURE = option yes;

        # Kernel compression algorithm
        KERNEL_XZ = mkForce no;
        KERNEL_LZ4 = mkForce no;
        KERNEL_ZSTD = mkForce yes;
        MODULE_COMPRESS_XZ = mkForce no;
        MODULE_COMPRESS_ZSTD = mkForce yes;

        ## CPUFreq
        CPU_FREQ_GOV_PERFORMANCE = yes;
        CPU_FREQ_GOV_POWERSAVE = yes;
        CPU_FREQ_GOV_SCHEDUTIL = mkForce yes;

        ## Zram
        CRYPTO_ZSTD = yes;
        # Needed as a workaround to make sure that it is present during initrd
        # since it is required before the module is loaded
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
        SECURITY_LOCKDOWN_LSM = mkForce no;
        SECURITY_LOCKDOWN_LSM_EARLY = option yes;
        LOCK_DOWN_KERNEL_FORCE_NONE = option yes;

        ## Hardened
        # Wipe slab and page allocations (since v5.3)
        # Instead of "slub_debug=P" and "page_poison=1", a single place can control memory allocation wiping now.
        # The init_on_free is only needed if there is concern about minimizing stale data lifetime.
        INIT_ON_ALLOC_DEFAULT_ON = yes;
        INIT_ON_FREE_DEFAULT_ON = yes;

        # Randomize kernel stack offset to deter attacks relying on stack address determinism
        RANDOMIZE_KSTACK_OFFSET_DEFAULT = yes;

        # Dangerous; enabling this allows replacement of running kernel.
        KEXEC = mkForce no;

        # Dangerous; enabling this allows replacement of running kernel.
        HIBERNATION = mkForce no;

        # But if CONFIG_MODULE=y is needed, at least they must be signed with a per-build key.
        MODULE_SIG = mkForce no;
        # MODULE_SIG_FORCE = option yes;
        MODULE_SIG_ALL = option yes;
        MODULE_SIG_SHA512 = option yes;
        MODULE_SIG_HASH = option (freeform "sha512");
        MODULE_SIG_KEY = option (freeform "certs/signing_key.pem");

        # Remove additional attack surface, unless you really need them.
        # IA32_EMULATION = mkForce no; # needed for Wine

        # Easily confused by misconfigured userspace, keep off.
        BINFMT_MISC = mkForce no;

        ### Arch Linux
        # Simplified Mandatory Access Control Kernel
        SECURITY_SMACK = yes;
        SECURITY_SMACK_BRINGUP = yes;
        SECURITY_SMACK_NETFILTER = yes;
        SECURITY_SMACK_APPEND_SIGNALS = yes;

        # TOMOYO Linux, pathname-based access control
        # Kernel config injects configuration with bad paths, so just disable
        # SECURITY_TOMOYO = yes; # not enabled during runtime as LSM since it may conflict with AppArmor

        ### kconfig-hardened-check
        BUG_ON_DATA_CORRUPTION = yes;
        SCHED_STACK_END_CHECK = yes;
        SLAB_FREELIST_HARDENED = yes;
        SLAB_FREELIST_RANDOM = yes;
        SHUFFLE_PAGE_ALLOCATOR = yes;
        FORTIFY_SOURCE = yes;
        DEBUG_WX = yes;
        DEBUG_LIST = yes;
        DEBUG_SG = yes;
        DEBUG_CREDENTIALS = yes;
        DEBUG_NOTIFIERS = yes;

        GCC_PLUGIN_LATENT_ENTROPY = yes;
        HARDENED_USERCOPY = yes;
        # HARDENED_USERCOPY_FALLBACK = mkForce no;

        INIT_STACK_ALL = option yes;

        GCC_PLUGIN_STACKLEAK = yes;
        DEFAULT_MMAP_MIN_ADDR = mkForce (freeform "65536");
        SECURITY_DMESG_RESTRICT = yes;
        DEBUG_VIRTUAL = yes;
        # STATIC_USERMODEHELPER = yes;
        EFI_DISABLE_PCI_DMA = yes;
        SLAB_MERGE_DEFAULT = mkForce no;

        STACKLEAK_METRICS = mkForce no;
        STACKLEAK_RUNTIME_DISABLE = mkForce no;
        INTEL_IOMMU_SVM = yes;
        INTEL_IOMMU_DEFAULT_ON = yes;
        # 10% compilation time increase, https://blog.herecura.eu/blog/2020-05-30-kconfig-hardening-tests/
        # SLUB_DEBUG_ON = yes;
        RESET_ATTACK_MITIGATION = yes;
        AMD_IOMMU_V2 = yes;

        SECURITY_WRITABLE_HOOKS = mkForce (option no); # disabled by default on my kernel anyway

        SECURITY_SAFESETID = yes;
        SECURITY_LOADPIN = yes;
        # SECURITY_LOADPIN_ENFORCE = yes; # enforcement causes issues for loading kernel modules in initrd

        ACPI_CUSTOM_METHOD = mkForce no;

        INET_DIAG = mkForce no; # socket monitoring interfact for INET (TCP, UDP, DCCP, etc)

        PROC_KCORE = mkForce no; # removes /proc/kcore support

        MODIFY_LDT_SYSCALL = mkForce no; # modify_ldt() syscall, needed for some wine programs though

        LEGACY_VSYSCALL_NONE = yes; # not a problem with glibc >= 2.14

        KPROBES = mkForce no;
        UPROBES = mkForce (option no);
        GENERIC_TRACER = mkForce (option no);

        PROC_PAGE_MONITOR = mkForce no; # disables monitoring on /proc such as /proc/pid/smaps and /proc/kpagecount
        USELIB = mkForce no; # uselib syscall, needed for libc5 or earlier

        # USERFAULTFD = mkForce no; # userfaultfd() system call, allows interception and handling of page faults in userland

        # DEBUG_FS = mkForce no; # BUG: looks like a lot of things depend on this so too much work to disable

        DRM_LEGACY = mkForce no;
        STAGING = mkForce no;
        KSM = mkForce no;
        KALLSYMS_ALL = mkForce no;
        # X86_VSYSCALL_EMULATION = mkForce no; # required by many programs before 2013

        X86_CPUID = mkForce no;
        IO_URING = mkForce no;
        # X86_IOPL_IOPERM = mkForce no; # ioperm() and iopl() syscalls, which is necessary for legacy applications
        LDISC_AUTOLOAD = mkForce no; # assumption about userspace trust, but only sets default so why not

        ACPI_TABLE_UPGRADE = mkForce no;

        # BPF_SYSCALL = mkForce no; # bpf() system call to manipulate eBPF programs/maps via file descriptors, can be used for profiling performance

        IP_DCCP = mkForce no;
        IP_SCTP = mkForce no; # Stream Control Transmission Protocol
        FTRACE = mkForce no;
        BPF_JIT = mkForce no;

        INPUT_EVBUG = mkForce no;

        ARCH_MMAP_RND_BITS = mkForce (freeform "32");

        #### Resolve hiccups
        INET_DIAG_DESTROY = mkForce (option yes);
        INET_RAW_DIAG = mkForce (option module);
        INET_TCP_DIAG = mkForce (option module);
        INET_UDP_DIAG = mkForce (option module);

        INET_MPTCP_DIAG = mkForce (option module);

        FTRACE_SYSCALLS = mkForce (option yes);
        FUNCTION_PROFILER = mkForce (option yes);
        FUNCTION_TRACER = mkForce (option yes);

        IP_DCCP_CCID3 = mkForce (option no);

        RING_BUFFER_BENCHMARK = mkForce (option no);

        SCHED_TRACER = mkForce (option yes);
        STACK_TRACER = mkForce (option yes);

        BPF_EVENTS = mkForce (option yes);
        BPF_JIT_ALWAYS_ON = mkForce (option no);

        #### Resolve workarounds
        NET_DROP_MONITOR = mkForce (option no);
        SECURITY_SELINUX_DISABLE = mkForce no;
        DLM = mkForce no; # depends on IP_SCTP
        NOUVEAU_LEGACY_CTX_SUPPORT = mkForce no;
      };
    };
}
