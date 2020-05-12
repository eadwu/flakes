{
  description = "Nix flake for my custom settings and stable packages";

  inputs.boxpub = { type = "github"; owner = "eadwu"; repo = "boxpub"; ref = "boxpub/2.x"; flake = false; };
  inputs.cachix = { type = "github"; owner = "eadwu"; repo = "cachix"; flake = false; };
  inputs.nixops = { type = "github"; owner = "NixOS"; repo = "nixops"; flake = false; };
  inputs.nix-linter = { type = "github"; owner = "eadwu"; repo = "nix-linter"; flake = false; };
  inputs.plymouth-themes = { type = "github"; owner = "eadwu"; repo = "plymouth-themes"; flake = false; };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      lib = nixpkgs.lib;
      systems = [ "x86_64-linux" ];
      forAllSystems = f: lib.genAttrs systems (system: f system);
    in
    rec {
      overlays = system: self: super: lib.genAttrs (builtins.attrNames (packages.${system}))
        (package: packages.${system}.${package});

      packages = forAllSystems
        (
          system:
          let
            args = {
              inherit system;
              config.allowUnfree = true;
            };
            pkgs = import nixpkgs args;
            inherit (pkgs) callPackage;
          in
          (
            rec {
              kernelPatches = pkgs.kernelPatches // (callPackage ./pkgs/kernel/patches.nix { });

              liberation-mono = pkgs.nerdfonts.override { fonts = [ "LiberationMono" ]; };

              boxpub = import inputs.boxpub { inherit system; };
              cachix = import inputs.cachix { inherit system; };
              nixopsUnstable = (import inputs.nixops { inherit pkgs; inherit (inputs) nixpkgs; }).overrideAttrs(_: { postInstall = ""; } );
              nix-linter = (import inputs.nix-linter { inherit args; }).nix-linter;

              clight-modules = callPackage ./pkgs/clight-modules { };

              picom = callPackage ./pkgs/picom { };

              plymouth-themes = import inputs.plymouth-themes { inherit pkgs; };
              dual-plymouth-theme = callPackage ./pkgs/dual-plymouth-theme {
                inherit (plymouth-themes) mkTheme;
                boot = plymouth-themes."1891042977";
                shutdown = plymouth-themes."1987238292";
              };

              rtLinuxPackagesFor = kernel: pkgs.linuxPackagesFor
                (kernel.override {
                  structuredExtraConfig = with lib.kernel; {
                    PREEMPT = yes;
                    PREEMPT_VOLUNTARY = option no;
                  };
                  kernelPatches = kernel.kernelPatches
                    ++ [
                      kernelPatches.rt
                    ];
                  modDirVersionArg = kernel.modDirVersion;
                });

              linuxPackages_latest_hardened_rt = rtLinuxPackagesFor pkgs.linux_latest_hardened;
              linux_latest_hardened_rt = linuxPackages_latest_hardened_rt.kernel;
            }
          )
        );

      nixosModules = {
        apropos = import ./modules/apropos.nix;
        sourcehut = import ./modules/sourcehut;
        pam-keyring = import ./modules/pam-keyring.nix;
      };
    };
}
