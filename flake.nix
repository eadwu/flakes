{
  edition = 201909;
  description = "A collection of Nix flakes";

  inputs.custom = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "custom"; };
  inputs.rolling = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "rolling"; };

  outputs = { self, nixpkgs, ... }@inputs: with nixpkgs.lib;
    foldl recursiveUpdate {}
      (map (v: v.outputs) (attrValues (removeAttrs inputs [ "self" "nixpkgs" ])));
}
