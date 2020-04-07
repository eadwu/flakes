{ nixpkgs-mozilla }:

{
  inherit (nixpkgs-mozilla) rustChannelOf;
  latest = import ./latest.nix { inherit nixpkgs-mozilla; };
}
