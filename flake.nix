{
  edition = 201909;
  description = "A collection of Nix flakes";

  inputs.custom.uri = github:eadwu/flakes/custom;
  inputs.rolling.uri = github:eadwu/flakes/rolling;

  outputs = inputs@{ self, nixpkgs, rolling }: with nixpkgs.lib;
    foldl recursiveUpdate {}
      (map (v: v.outputs) (attrValues (removeAttrs inputs [ "self" "nixpkgs" ])));
}
