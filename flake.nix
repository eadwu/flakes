{
  description = "Nix flake for my custom settings and stable packages";

  inputs.nixpkgs = { type = "github"; owner = "eadwu"; repo = "nixpkgs"; ref = "develop"; };

  inputs.boxpub = { type = "github"; owner = "eadwu"; repo = "boxpub"; ref = "boxpub/2.x"; flake = false; };
  inputs.cachix = { type = "github"; owner = "eadwu"; repo = "cachix"; flake = false; };
  inputs.nixops = { type = "github"; owner = "NixOS"; repo = "nixops"; flake = false; };
  inputs.nix-linter = { type = "github"; owner = "eadwu"; repo = "nix-linter"; flake = false; };
  inputs.plymouth-themes = { type = "github"; owner = "eadwu"; repo = "plymouth-themes"; flake = false; };

  outputs = { self, nixpkgs, ... }@inputs:
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
        nixopsUnstable =
          (import inputs.nixops { inherit (final) pkgs;inherit (inputs) nixpkgs; }).overrideAttrs (_: { postInstall = ""; });
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
            version = "2020-04-24";

            src = fetchFromGitHub {
              owner = "yshui";
              repo = "picom";
              rev = "0b377537ec9c3f6faaa13878701d8d0b2ee62d0c";
              sha256 = "0z4iw2ypi3r4hrqxci9yi46acfpc7q35b0srlbrba4wznpfziagm";
              fetchSubmodules = true;
            };

            patches = (oldAttrs.patches or [ ])
              ++ [ ./pkgs/picom/dual_kawase.patch.xz ];
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

        plymouth-themes = import inputs.plymouth-themes { inherit (self) pkgs; };
        dual-plymouth-theme = callPackage ./pkgs/dual-plymouth-theme {
          inherit (plymouth-themes) mkTheme;
          boot = plymouth-themes."1891042977";
          shutdown = plymouth-themes."1987238292";
        };

        rtLinuxPackagesFor = kernel: linuxPackagesFor (kernel.override {
          structuredExtraConfig = with nixpkgs.lib.kernel; {
            PREEMPT = yes;
            PREEMPT_VOLUNTARY = option no;
          };
          kernelPatches = kernel.kernelPatches
            ++ [
            kernelPatches.rt
          ];
          modDirVersionArg = kernel.modDirVersion;
        });

        customLinuxPackagesFor = kernel: linuxPackagesFor (kernel.override {
          structuredExtraConfig = { };
          kernelPatches = kernel.kernelPatches
            ++ [
            kernelPatches.o3
            kernelPatches.bmq
            kernelPatches.xanmod
            kernelPatches.zen-zswap
            kernelPatches.enable-fsgsbase-instructions
            kernelPatches.extra_config
          ];
          modDirVersionArg = kernel.modDirVersion;
        });

        linuxPackages_custom = customLinuxPackagesFor (rtLinuxPackagesFor linux_latest_hardened).kernel;
        linux_custom = linuxPackages_custom.kernel;
      };

      packages = forAllSystems (system: {
        inherit (nixpkgsFor.${system})
          liberation-mono
          boxpub cachix nixopsUnstable nix-linter
          clight-modules i3lock-color picom radian
          plymouth-themes dual-plymouth-theme
          linuxPackages_custom linux_custom
          ;
      });

      checks = forAllSystems (system: self.packages.${system});

      nixosModules = {
        apropos = import ./modules/apropos.nix;
        sourcehut = import ./modules/sourcehut;
        pam-keyring = import ./modules/pam-keyring.nix;
      };
    };
}
