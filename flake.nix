{
  description = "Nix flake for a simulated rolling release";

  # Upstream source tree(s).
  inputs.nixpkgs-mozilla = { type = "github"; owner = "mozilla"; repo = "nixpkgs-mozilla"; flake = false; };
  inputs.dwm = { type = "gitlab"; owner = "eadwu"; repo = "dwm"; ref = "develop"; flake = false; };
  inputs.gtk-theme-collections = { type = "github"; owner = "addy-dclxvi"; repo = "gtk-theme-collections"; flake = false; };
  inputs.pipewire = { type = "gitlab"; host = "gitlab.freedesktop.org"; owner = "pipewire"; repo = "pipewire"; flake = false; };
  inputs.st = { type = "gitlab"; owner = "eadwu"; repo = "st"; ref = "develop"; flake = false; };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      supportedSystems = [ "x86_64-linux" ];

      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);

      overlays = builtins.attrValues self.overlays;

      nixpkgsFor = forAllSystems (
        system: import nixpkgs {
          inherit system overlays;
          config.allowUnfree = true;
        }
      );

      packageAttrs = nixpkgs.lib.mapAttrs
        (_: input: {
          src = input;
          version = builtins.substring 0 8 input.lastModifiedDate;
        })
        inputs;
    in
    {
      overlay = with nixpkgs.lib; foldl' (final': prev': composeExtensions final' prev') (final: prev: {}) overlays;
      overlays.default = final: prev: with final.pkgs; {
        rustChannels =
          let
            nixpkgs-mozilla = import nixpkgs {
              inherit (stdenv.hostPlatform) system;
              overlays = [ (import inputs.nixpkgs-mozilla) ];
            };
          in
          import ./overlays/rust/channels.nix { inherit nixpkgs-mozilla; };
        rustPlatform = rustChannels.latest.nightly;

        dwm = callPackage ./pkgs/dwm { inherit (prev) dwm; } packageAttrs.dwm;
        st = callPackage ./pkgs/st { inherit (prev) st; } packageAttrs.st;

        pipewire = callPackage ./pkgs/pipewire { inherit (prev) pipewire; } packageAttrs.pipewire;

        discord-canary = callPackage ./pkgs/discord-canary { inherit (prev) discord-canary; };
        vivaldi-snapshot = callPackage ./pkgs/vivaldi-snapshot { inherit (prev) vivaldi; };

        vscode-insiders = callPackage ./pkgs/vscode-insiders { inherit (prev) vscode; };
        vscode-insiders-with-extensions = prev.vscode-with-extensions.override {
          vscode = vscode-insiders;
        };

        gtk-theme-collections = callPackage ./pkgs/gtk-theme-collections { } packageAttrs.gtk-theme-collections;
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
            pipewire
            discord-canary vivaldi-snapshot
            vscode-insiders vscode-insiders-with-extensions
            gtk-theme-collections
            ;
        });

      checks = forAllSystems (system: self.packages.${system});
    };
}
