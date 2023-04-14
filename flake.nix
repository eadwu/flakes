{
  description = "A collection of Nix flakes";

  inputs.custom = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "custom"; inputs.nixpkgs.follows = "/nixpkgs"; };
  inputs.rolling = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "rolling"; inputs.nixpkgs.follows = "/nixpkgs"; };
  inputs.srcs = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "src"; inputs.nixpkgs.follows = "/nixpkgs"; };

  outputs = { self, nixpkgs, ... }@inputs: with nixpkgs.lib; let
    targetInputs = removeAttrs inputs [ "self" "nixpkgs" ];
  in
  (foldl' recursiveUpdate { } (builtins.attrValues (builtins.mapAttrs (_: v: v.outputs) targetInputs)))
  // {
    overlay = foldl' (final': prev': composeExtensions final' prev') (final: prev: { }) (builtins.attrValues self.overlays);
    overlays =
      foldl' recursiveUpdate { } (
        builtins.attrValues (
          mapAttrs
            (
              n: v:
                mapAttrs'
                  (n': v': nameValuePair "${n}-${n'}" v')
                  v.overlays
            )
            targetInputs
        )
      );

    nixosConfigurations.hosts = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [ self.nixosModules.adblock ];
    };
  };
}
