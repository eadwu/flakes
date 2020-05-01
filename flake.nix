{
  edition = 201909;
  description = "Nix flake for a simulated rolling release";

  outputs = { self, nixpkgs }:
    let
      lib = nixpkgs.lib;
      systems = [ "x86_64-linux" ];
      forAllSystems = f: lib.genAttrs systems (system: f system);
    in
    rec {
      overlays = system: self: super: lib.genAttrs (builtins.attrNames (packages.${system}))
        (package: packages.${system}.${package});

      packages = forAllSystems
        (
          system:
          let
            args = {
              inherit system;
              config.allowUnfree = true;
            };
            pkgs = import nixpkgs args;
            inherit (pkgs) callPackage;
          in
          rec {
            nixpkgs-mozilla = (
              import nixpkgs (args // { overlays = [ (import (import ./overlays/rust)) ]; })
            );
            rustChannels = import ./overlays/rust/channels.nix { inherit nixpkgs-mozilla; };
            rustPlatform = rustChannels.latest.nightly;

            dwm = callPackage ./pkgs/dwm { };
            st = callPackage ./pkgs/st { };

            discord-canary = callPackage ./pkgs/discord-canary { };
            vivaldi-snapshot = callPackage ./pkgs/vivaldi-snapshot { };

            vscode-insiders = callPackage ./pkgs/vscode-insiders { };
            vscode-insiders-with-extensions = pkgs.vscode-with-extensions.override {
              vscode = vscode-insiders;
            };

            rofi-unwrapped = callPackage ./pkgs/rofi-unwrapped {
              inherit (pkgs.xorg) libxcb xcbutil xcbutilwm;
            };
            rofi = pkgs.rofi.override { inherit rofi-unwrapped; };

            gtk-theme-collections = callPackage ./pkgs/gtk-theme-collections { };
          }
        );
    };
}
