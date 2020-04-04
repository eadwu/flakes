{
  edition = 201909;
  description = "A collection of Nix flakes";

  inputs.rolling.url = "github:eadwu/flakes/rolling";

  outputs = inputs@{ self, nixpkgs, rolling }:
   with nixpkgs.lib; foldl recursiveUpdate {} (attrValues (removeAttrs inputs [ "self" "nixpkgs" ]));
}
