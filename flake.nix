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

      overlays.default-srcs = final: prev: {
        _srcs = self;
      };
    };
}
