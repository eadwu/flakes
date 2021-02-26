{ nixpkgs-mozilla }:
let
  inherit (nixpkgs-mozilla.lib) genAttrs;
  channels = [ "nightly" "beta" "stable" ];
  parse = file: builtins.fromJSON (builtins.readFile file);
  spec = genAttrs channels (channel: parse (./latest + "/${channel}.json"));
in
with nixpkgs-mozilla;
genAttrs
  channels
  (
    channel:
    let
      base = (rustChannelOf (spec.${channel} // { inherit channel; }));
      # https://github.com/mozilla/nixpkgs-mozilla/blob/57c8084c7ef41366993909c20491e359bbb90f54/rust-overlay.nix#L240
      # The packages available usually are:
      #   cargo, rust-analysis, rust-docs, rust-src, rust-std, rustc, and
      #   rust, which aggregates them in one package.
      self = base //
        rec {
          inherit (spec.${channel}) date;
          rust = base.rust.override { extensions = [ "rust-src" "rust-std" ]; };
          rustcSrc = base.rust-src;
          rustLibSrc = base.rust-src + "/lib/rustlib/src/rust/library";

          fetchCargoTarball = nixpkgs-mozilla.rustPlatform.fetchCargoTarball.override {
            inherit (base) cargo;
          };

          # Hooks
          inherit (callPackage (nixpkgs-mozilla.path + "/pkgs/build-support/rust/hooks/default.nix") {
            inherit (base) cargo;
          }) cargoBuildHook cargoCheckHook cargoInstallHook cargoSetupHook maturinBuildHook;

          buildRustPackage =
            { nativeBuildInputs ? [ ], ... }@args:
            nixpkgs-mozilla.rustPlatform.buildRustPackage.override
              {
                inherit fetchCargoTarball;
                inherit (base) cargo rustc;
                inherit cargoBuildHook cargoCheckHook cargoInstallHook cargoSetupHook;
                # `rust` derivation needed for toRustTarget toRustTargetSpec
                # Doesn't use any special things so don't override
                # rust = { inherit (nixpkgs-mozilla.rust) toRustTarget toRustTargetSpec; };
                rustPlatform = self;
              }
              (args // { nativeBuildInputs = nativeBuildInputs ++ [ base.rust ]; });
        };
    in
    self
  )
