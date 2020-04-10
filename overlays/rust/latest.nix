{ nixpkgs-mozilla }:
let
  inherit (nixpkgs-mozilla.lib) genAttrs;

  channels = [ "nightly" "beta" "stable" ];
  parse = file: builtins.fromJSON (builtins.readFile file);
  spec = genAttrs channels (channel: parse (./latest + "/${channel}.json"));
in
  with nixpkgs-mozilla;
  genAttrs channels
    (
      channel: (rustChannelOf (spec.${channel} // { inherit channel; })) // {
        inherit (nixpkgs-mozilla.rustPlatform) buildRustPackage;
      }
    )
