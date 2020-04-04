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
      in rec {
        vivaldi-snapshot = import ./vivaldi-snapshot { inherit (pkgs) fetchurl vivaldi lib libdrm mesa; };
        vscode-insiders = import ./vscode-insiders { inherit (pkgs) fetchurl vscode; };
        vscode-insiders-with-extensions = pkgs.vscode-with-extensions.override {
          vscode = vscode-insiders;
        };
      });

      rev = nixpkgs.lib.mkIf (self ? rev) self.rev;
    };
}
