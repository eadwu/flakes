{
  description = "Nix flake for my custom sourced files";

  outputs = { self, nixpkgs, ... }@inputs:
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
      overlay = with nixpkgs.lib; foldl' (final': prev': composeExtensions final' prev') (final: prev: { }) overlays;

      overlays.default-srcs = final: prev: with final.pkgs; {
        _srcs = {
          someone-who-cares = ./srcs/someone-who-cares;
          energized-unified = ./srcs/energized-unified;
          energized-regional = ./srcs/energized-regional;

          default-gitignore = ./srcs/default-gitignore;
        };
      };

      packages = forAllSystems (
        system:
        let
          pkgSet = nixpkgsFor.${system};
        in
        {
          inherit (pkgSet._srcs)
            someone-who-cares energized-unified energized-regional
            default-gitignore
            ;
        }
      );

      checks = forAllSystems (system: self.packages.${system});
    };
}
