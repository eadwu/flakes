{
  description = "Nix flake for my custom settings and stable packages";

  inputs.nixpkgs = { type = "github"; owner = "eadwu"; repo = "nixpkgs"; ref = "develop"; };

  inputs.boxpub = { type = "github"; owner = "eadwu"; repo = "boxpub"; ref = "boxpub/2.x"; flake = false; };
  inputs.cachix = { type = "github"; owner = "eadwu"; repo = "cachix"; flake = false; };
  inputs.nixops = { type = "github"; owner = "NixOS"; repo = "nixops"; };
  inputs.nix-linter = { type = "github"; owner = "eadwu"; repo = "nix-linter"; flake = false; };
  inputs.plymouth-themes = { type = "github"; owner = "eadwu"; repo = "plymouth-themes"; flake = false; };

  outputs = { self, nixpkgs, nixops, ... }@inputs:
    let
      supportedSystems = [ "x86_64-linux" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; overlays = [ self.overlay ]; config.allowUnfree = true; });
    in
    {
      overlay = final: prev: with final.pkgs; {
        kernelPatches = prev.kernelPatches // (callPackage ./pkgs/kernel/patches.nix { });

        liberation-mono = prev.nerdfonts.override { fonts = [ "LiberationMono" ]; };

        boxpub = import inputs.boxpub { inherit (stdenv.hostPlatform) system; };
        cachix = import inputs.cachix { inherit (stdenv.hostPlatform) system; };
        nixopsUnstable = nixops.defaultPackage.${system};
        nix-linter = (import inputs.nix-linter { args = { inherit (stdenv.hostPlatform) system; }; }).nix-linter;

        clight-modules = callPackage ./pkgs/clight-modules { };

        i3lock-color = prev.i3lock-color.overrideAttrs (
          oldAttrs: {
            # Don't include ASAN runtime in release
            postPatch = (oldAttrs.postPatch or "") + ''
              sed -i 's/is_release=.*/is_release=yes/g' configure.ac
            '';
          }
        );

        picom = prev.picom.overrideAttrs (
          oldAttrs: {
            version = "2020-04-25";

            src = fetchFromGitHub {
              owner = "tryone144";
              repo = "picom";
              rev = "9b4a6f062758f1f9a66d4e77d16c86c9aa259b42";
              sha256 = "0jf1lih85d07q1kw1v3sa4azjyf33b61kkxjakb2l6zi8fcxf4s9";
            };
          }
        );

        radian =
          let
            packageOverrides = final: prev: with final; {
              lineedit = callPackage ./pkgs/lineedit { };
              rchitect = callPackage ./pkgs/rchitect { };
              radian = callPackage ./pkgs/radian { };
            };
            python = python3.override { inherit packageOverrides; };
          in
          python.pkgs.radian;

        plymouth-themes = import inputs.plymouth-themes { inherit (final) pkgs; };
        dual-plymouth-theme = callPackage ./pkgs/dual-plymouth-theme {
          inherit (plymouth-themes) mkTheme;
          boot = plymouth-themes."1891042977";
          shutdown = plymouth-themes."1987238292";
        };

        rtLinuxPackagesFor = kernel: linuxPackagesFor (kernel.override {
          structuredExtraConfig = with nixpkgs.lib;
            (mapAttrs (_: v: mkForce v) kernel.configfile.moduleStructuredConfig.settings)
            // (with nixpkgs.lib.kernel; {
              PREEMPT = yes;
              PREEMPT_VOLUNTARY = mkOverride 36 no;
              IRQ_FORCED_THREADING = yes;
            });
          kernelPatches = kernel.kernelPatches;
          modDirVersionArg = kernel.modDirVersion;
        });

        customLinuxPackagesFor = kernel: linuxPackagesFor (kernel.override {
          structuredExtraConfig = with nixpkgs.lib;
            mapAttrs (_: v: mkForce v) kernel.configfile.moduleStructuredConfig.settings;
          kernelPatches = kernel.kernelPatches ++ [
            kernelPatches.o3
            kernelPatches.xanmod
            kernelPatches.zen-tweaks
            kernelPatches.intel-pstate-energy-efficiency
            kernelPatches.extra-config
          ];
          modDirVersionArg = kernel.modDirVersion;
        });

        linuxPackages_custom = customLinuxPackagesFor (rtLinuxPackagesFor linux_latest_hardened).kernel;
        linux_custom = linuxPackages_custom.kernel;
      };

      packages = forAllSystems (system:
        let
          pkgSet = nixpkgsFor.${system};
        in
        {
          inherit (pkgSet)
            liberation-mono
            boxpub cachix nixopsUnstable nix-linter
            i3lock-color picom radian
            dual-plymouth-theme
            linux_custom
            ;

          inherit (pkgSet.clight-modules)
            inhibit_bl
            ;

          inherit (pkgSet.plymouth-themes)
            geshin-impact-start
            ;
        });

      checks = forAllSystems (system: self.packages.${system});

      nixosModules = {
        r-36 = import ./modules/r-36.nix;
        custom = import ./modules/custom.nix;
        pipewire = import ./modules/pipewire.nix;
        sourcehut = import ./modules/sourcehut;
        pam-keyring = import ./modules/pam-keyring.nix;
      };
    };
}
