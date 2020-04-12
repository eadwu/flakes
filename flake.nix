{
  edition = 201909;
  description = "Nix flake for my custom settings and stable packages";

  inputs.cachix = { type = "github"; owner = "eadwu"; repo = "cachix"; flake = false; };
  inputs.boxpub = { type = "github"; owner = "eadwu"; repo = "boxpub"; flake = false; };
  inputs.nix-linter = { type = "github"; owner = "eadwu"; repo= "nix-linter"; flake = false; };
  inputs.plymouth-themes = { type = "github"; owner = "eadwu"; repo = "plymouth-themes"; flake = false; };
  inputs.stable = { type = "github"; owner = "NixOS"; repo = "nixpkgs"; flake = false; ref = "0abc66e252ea7f11c18845a79cbfc59335356543"; };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      lib = nixpkgs.lib;
      systems = [ "x86_64-linux" ];
      forAllSystems = f: lib.genAttrs systems (system: f system);
    in rec {
      overlays = system: self: super: lib.genAttrs (builtins.attrNames (packages.${system}))
        (package: packages.${system}.${package});

      packages = forAllSystems (
        system:
          let
            args = {
              inherit system;
              config.allowUnfree = true;
            };

            pkgs = import nixpkgs args;
            inherit (pkgs) callPackage;
          in (
            rec {
              customKernelPatches = callPackage ./pkgs/kernel/patches.nix {};

              liberation-mono = pkgs.nerdfonts.override { fonts = [ "LiberationMono" ]; };

              boxpub = import inputs.boxpub { inherit system; nixpkgs = inputs.stable; };
              cachix = import inputs.cachix { inherit system; };
              nix-linter = (import inputs.nix-linter { inherit args; }).nix-linter;

              clight-modules = callPackage ./pkgs/clight-modules {};

              picom = callPackage ./pkgs/picom {};

              plymouth-themes = import inputs.plymouth-themes { inherit pkgs; };
              dual-plymouth-theme = callPackage ./pkgs/dual-plymouth-theme {
                inherit (plymouth-themes) mkTheme;
                boot = plymouth-themes."1891042977";
                shutdown = plymouth-themes."1987238292";
              };
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
