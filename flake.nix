{
  edition = 201909;
  description = "Nix flake for my custom settings and stable packages";

  inputs.cachix.uri = github:eadwu/cachix;
  inputs.cachix.flake = false;

  inputs.boxpub.uri = github:eadwu/boxpub;
  inputs.boxpub.flake = false;

  inputs.stable.uri = github:NixOS/nixpkgs/0abc66e252ea7f11c18845a79cbfc59335356543;
  inputs.stable.flake = false;

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

            _callPackage = pkgs.newScope pkgs;
            callPackage = pkgs.newScope { inherit pkgs; callPackage = _callPackage; };
          in (
            rec {
              boxpub = import inputs.boxpub { inherit system; nixpkgs = inputs.stable; };
              cachix = import inputs.cachix { inherit system; };

              clight-modules = callPackage ./pkgs/clight-modules {};
            }
          )
      );

      nixosModules = {
        apropos = import ./modules/apropos.nix;
      };
    };
}
