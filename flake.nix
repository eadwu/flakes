{
  edition = 201909;
  description = "Nix flake for a simulated rolling release";

  outputs = { self, nixpkgs }: let
      lib = nixpkgs.lib;
      systems = [ "x86_64-linux" "i686-linux" "x86_64-darwin" "aarch64-linux" ];
      forAllSystems = f: lib.genAttrs systems (system: f system);
    in {
      packages = forAllSystems (system: let
        pkgs = import nixpkgs {
          inherit system;
          config.allowUnfree = true;
        };

        callPackage = pkgs.newScope pkgs;
      in rec {
        dwm = callPackage ./dwm { };
        st = callPackage ./st { };

        discord-canary = callPackage ./discord-canary { };
        vivaldi-snapshot = callPackage ./vivaldi-snapshot { };

        vscode-insiders = callPackage ./vscode-insiders { };
        vscode-insiders-with-extensions = pkgs.vscode-with-extensions.override {
          vscode = vscode-insiders;
        };

        rofi-unwrapped = callPackage ./rofi-unwrapped {
          inherit (pkgs.xorg) libxcb xcbutil xcbutilwm;
        };
        rofi = pkgs.rofi.override { inherit rofi-unwrapped; };

        plymouth-geshin-impact-start = callPackage ./plymouth-geshin-impact-start { };
      });

      rev = nixpkgs.lib.mkIf (self ? rev) self.rev;
    };
}
