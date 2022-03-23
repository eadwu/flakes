{
  description = "Nix flake for my custom settings and stable packages";

  inputs.nixpkgs = { type = "github"; owner = "eadwu"; repo = "nixpkgs"; ref = "develop"; };
  inputs.flakes-srcs = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "src"; };

  inputs.boxpub = { type = "github"; owner = "eadwu"; repo = "boxpub"; ref = "boxpub/2.x"; flake = false; };
  inputs.emacs-overlay = { type = "github"; owner = "nix-community"; repo = "emacs-overlay"; };
  inputs.nixops = { type = "github"; owner = "NixOS"; repo = "nixops"; };
  inputs.plymouth-themes = { type = "github"; owner = "eadwu"; repo = "plymouth-themes"; flake = false; };
  inputs.imperial = { type = "github"; owner = "eadwu"; repo = "imperial"; };

  inputs.privacy-haters = { type = "git"; url = "git://r-36.net/privacy-haters"; flake = false; };
  inputs.sb-hosts = { type = "github"; owner = "StevenBlack"; repo = "hosts"; flake = false; };
  inputs.dd-hosts = { type = "github"; owner = "lightswitch05"; repo = "hosts"; flake = false; };
  inputs.uhb-hosts = { type = "github"; owner = "Ultimate-Hosts-Blacklist"; repo = "Ultimate.Hosts.Blacklist"; flake = false; };

  outputs = { self, nixpkgs, nixops, ... }@inputs:
    let
      supportedSystems = [ "x86_64-linux" ];

      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);

      overlays = builtins.attrValues self.overlays;

      nixpkgsFor = forAllSystems (
        system: import nixpkgs {
          inherit system overlays;
          config.allowUnfree = true;
        }
      );
    in
    {
      overlay =
        with nixpkgs.lib;
        foldl'
          (final': prev': composeExtensions final' prev')
          (final: prev: { })
          overlays;

      overlays.imperial = inputs.imperial.overlay;
      overlays.emacs-overlay = inputs.emacs-overlay.overlay;
      overlays.default = final: prev: with final.pkgs; {
        kernelPatches = prev.kernelPatches // (callPackage ./pkgs/kernel/patches.nix { });

        ladspa-bs2b = callPackage ./pkgs/ladspa-bs2b { };
        liberation-mono = prev.nerdfonts.override { fonts = [ "LiberationMono" ]; };

        boxpub = import inputs.boxpub { inherit (stdenv.hostPlatform) system; };
        nixopsUnstable = nixops.defaultPackage.${stdenv.hostPlatform.system};

        clight-modules = callPackage ./pkgs/clight-modules { };

        plymouth-themes = import inputs.plymouth-themes { inherit (final) pkgs; };
        dual-plymouth-theme = callPackage ./pkgs/dual-plymouth-theme {
          inherit (plymouth-themes) mkTheme;
          boot = plymouth-themes."1891042977";
          shutdown = plymouth-themes."1987238292";
        };

        rtLinuxPackagesFor = kernel: linuxPackagesFor (
          kernel.override {
            structuredExtraConfig = with nixpkgs.lib;
              (mapAttrs (_: v: mkForce v) kernel.configfile.moduleStructuredConfig.settings)
              // (
                with nixpkgs.lib.kernel; {
                  # Preempt
                  EXPERT = yes;
                  PREEMPT = mkOverride 36 yes;
                  PREEMPT_VOLUNTARY = mkOverride 36 no;
                  IRQ_FORCED_THREADING = yes;
                  RT_GROUP_SCHED = mkOverride 36 (option no);

                  # RCU
                  RCU_EXPERT = yes;
                  RCU_BOOST = yes;
                  RCU_BOOST_DELAY = freeform "0";
                  RCU_NOCB_CPU = yes;

                  # Timer
                  HZ_100 = yes;
                  HZ_250 = mkOverride 36 no;
                  HZ_1000 = mkOverride 36 no;
                  HZ = mkOverride 36 (freeform "100");
                }
              );
            kernelPatches = kernel.kernelPatches;
            modDirVersionArg = kernel.modDirVersion;
          }
        );

        customLinuxPackagesFor = kernel: linuxPackagesFor (
          kernel.override {
            structuredExtraConfig = with nixpkgs.lib;
              mapAttrs (_: v: mkForce v) kernel.configfile.moduleStructuredConfig.settings;
            kernelPatches = kernel.kernelPatches ++ [
              kernelPatches.o3
              kernelPatches.mglru
              kernelPatches.disable-enhanced-sco
              kernelPatches.extra-config
            ];
            modDirVersionArg = kernel.modDirVersion;
          }
        );

        linuxPackages_custom = customLinuxPackagesFor (rtLinuxPackagesFor linux_latest).kernel;
        linux_custom = linuxPackages_custom.kernel;
      };

      packages = forAllSystems (
        system:
        let
          pkgSet = nixpkgsFor.${system};
        in
        {
          inherit (pkgSet)
            ladspa-bs2b liberation-mono
            boxpub nixopsUnstable
            dual-plymouth-theme
            linux_custom
            ;

          inherit (pkgSet.clight-modules)
            inhibit_bl trendlog
            ;

          inherit (pkgSet.plymouth-themes)
            geshin-impact-start
            ;
        }
      );

      checks = forAllSystems (system: self.packages.${system});

      nixosModules = {
        r-36 = import ./modules/r-36.nix inputs;
        custom = import ./modules/custom.nix inputs;
        pipewire = import ./modules/pipewire.nix;
        pam-keyring = import ./modules/pam-keyring.nix;
        sysfs = import ./modules/sysfs.nix;
      };
    };
}
