{
  description = "Nix flake for a simulated rolling release";

  outputs = { self, nixpkgs }:
    let
      supportedSystems = [ "x86_64-linux" ];
      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);
      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; overlays = [ self.overlay ]; config.allowUnfree = true; });
    in
    {
      overlay = final: prev: with final.pkgs; {
        rustChannels =
          let
            nixpkgs-mozilla = import nixpkgs { inherit (stdenv.hostPlatform) system; overlays = [ (import (import ./overlays/rust)) ]; };
          in
          import ./overlays/rust/channels.nix { inherit nixpkgs-mozilla; };
        rustPlatform = rustChannels.latest.nightly;

        dwm = callPackage ./pkgs/dwm { inherit (prev) dwm; };
        st = callPackage ./pkgs/st { inherit (prev) st; };

        discord-canary = callPackage ./pkgs/discord-canary { inherit (prev) discord-canary; };
        vivaldi-snapshot = callPackage ./pkgs/vivaldi-snapshot { inherit (prev) vivaldi; };

        vscode-insiders = callPackage ./pkgs/vscode-insiders { inherit (prev) vscode; };
        vscode-insiders-with-extensions = prev.vscode-with-extensions.override {
          vscode = vscode-insiders;
        };

        gtk-theme-collections = callPackage ./pkgs/gtk-theme-collections { };
      };

      packages = forAllSystems (system:
        let
          pkgSet = nixpkgsFor.${system};
          rustPkgSet = channel: { inherit (channel) rust rustcSrc; };
        in
        {
          inherit (pkgSet)
            rustChannels rustPlatform
            dwm st
            discord-canary vivaldi-snapshot
            vscode-insiders vscode-insiders-with-extensions
            gtk-theme-collections
            ;
        });

      checks = forAllSystems (system: self.packages.${system});
    };
}
