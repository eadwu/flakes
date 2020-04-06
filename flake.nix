{
  edition = 201909;
  description = "Nix flake for a simulated rolling release";

  outputs = { self, nixpkgs }:
    let
      lib = nixpkgs.lib;
      systems = [ "x86_64-linux" ];
      forAllSystems = f: lib.genAttrs systems (system: f system);
    in {
      packages = forAllSystems (
        system:
          let
            pkgs = import nixpkgs {
              inherit system;
              config.allowUnfree = true;
            };

            callPackage = pkgs.newScope pkgs;
          in rec {
            dwm = callPackage ./pkgs/dwm {};
            st = callPackage ./pkgs/st {};

            discord-canary = callPackage ./pkgs/discord-canary {};
            vivaldi-snapshot = callPackage ./pkgs/vivaldi-snapshot {};

            vscode-insiders = callPackage ./pkgs/vscode-insiders {};
            vscode-insiders-with-extensions = pkgs.vscode-with-extensions.override {
              vscode = vscode-insiders;
            };

            rofi-unwrapped = callPackage ./pkgs/rofi-unwrapped {
              inherit (pkgs.xorg) libxcb xcbutil xcbutilwm;
            };
            rofi = pkgs.rofi.override { inherit rofi-unwrapped; };

            gtk-theme-collections = callPackage ./pkgs/gtk-theme-collections {};
            plymouth-geshin-impact-start = callPackage ./pkgs/plymouth-geshin-impact-start {};
          }
      );
    };
}
