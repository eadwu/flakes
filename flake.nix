{
  description = "Nix flake for my custom settings and stable packages";

  inputs.nixpkgs = { type = "github"; owner = "eadwu"; repo = "nixpkgs"; ref = "develop"; };
  inputs.flakes-srcs = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "src"; };

  inputs.boxpub = { type = "github"; owner = "eadwu"; repo = "boxpub"; ref = "boxpub/2.x"; flake = false; };
  inputs.emacs-overlay = { type = "github"; owner = "nix-community"; repo = "emacs-overlay"; };
  inputs.nixops = { type = "github"; owner = "NixOS"; repo = "nixops"; };
  inputs.plymouth-themes = { type = "github"; owner = "eadwu"; repo = "plymouth-themes"; flake = false; };
  inputs.imperial = { type = "github"; owner = "eadwu"; repo = "imperial"; };
  inputs.deploy-rs = { type = "github"; owner = "serokell"; repo = "deploy-rs"; };

  inputs.privacy-haters = { type = "git"; url = "git://r-36.net/privacy-haters"; flake = false; };
  inputs.sb-hosts = { type = "github"; owner = "StevenBlack"; repo = "hosts"; flake = false; };
  inputs.dd-hosts = { type = "github"; owner = "lightswitch05"; repo = "hosts"; flake = false; };
  inputs.uhb-hosts = { type = "github"; owner = "Ultimate-Hosts-Blacklist"; repo = "Ultimate.Hosts.Blacklist"; flake = false; };
  inputs.mullvad-blocklists = { type = "github"; owner = "mullvad"; repo = "dns-blocklists"; flake = false; };

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
      overlays.deploy-rs = inputs.deploy-rs.overlay;
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

        customLinuxPackagesFor = let
          patchset = kernel: linuxPackagesFor (
            kernel.override {
              structuredExtraConfig = with nixpkgs.lib;
                mapAttrs (_: v: mkForce v) kernel.configfile.moduleStructuredConfig.settings;
              kernelPatches = [
                kernelPatches.eevdf-bore
                kernelPatches.preempt
                kernelPatches.extra-config
              ];
              modDirVersionArg = kernel.modDirVersion;
            }
          );
        in kernel: patchset kernel;

        linuxPackages_custom = customLinuxPackagesFor linux_latest;
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
        r-36 = import ./modules/adblock/r-36.nix inputs;
        adblock = import ./modules/adblock inputs;
        pam-keyring = import ./modules/pam-keyring.nix;
        sysfs = import ./modules/sysfs.nix;
      };
    };
}
