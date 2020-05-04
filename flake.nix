{
  description = "A collection of Nix flakes";

  inputs.custom = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "custom"; };
  inputs.rolling = { type = "github"; owner = "eadwu"; repo = "flakes"; ref = "rolling"; };

  inputs.custom.inputs.nixpkgs.follows = "/nixpkgs";
  inputs.rolling.inputs.nixpkgs.follows = "/nixpkgs";

  outputs = { self, nixpkgs, ... }@inputs: with nixpkgs.lib; let
    _foldl' = f: foldl recursiveUpdate { } (map f (attrValues (removeAttrs inputs [ "self" "nixpkgs" ])));
  in
  _foldl' (f: f.outputs)
  // {
    overlays = system: self: super: _foldl' (f: f.overlays system self super);
  };
}
