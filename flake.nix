{
  edition = 201909;
  description = "Nix flake for my custom settings and stable packages";

  inputs.cachix.uri = github:eadwu/cachix;
  inputs.cachix.flake = false;

  outputs = { self, nixpkgs, ... }@inputs:
    let
      lib = nixpkgs.lib;
      systems = [ "x86_64-linux" ];
      forAllSystems = f: lib.genAttrs systems (system: f system);
    in {
      packages = forAllSystems (
        system:
          let
            pkgs = import nixpkgs {
              inherit system;
              config.allowUnfree = true;
            };

            callPackage = pkgs.newScope pkgs;
          in rec {
            cachix = import inputs.cachix { inherit system; };
          }
      );

      nixosModules = {
        apropos = import ./modules/apropos.nix;
      };
    };
}
