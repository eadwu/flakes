{ fetchurl
, vivaldi
, lib
, libdrm
, mesa
, enableWidevine ? true
, proprietaryCodecs ? true
}:

(
  vivaldi.override {
    isSnapshot = true;
    inherit enableWidevine proprietaryCodecs;
  }
).overrideAttrs (
  oldAttrs: rec {
    pname = "vivaldi-snapshot";
    version = "3.0.1874.27";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "1q646fz76pc7y2zl5ndl5hvp30la2qifc9n5lj4v3vsrw9n2m052";
    };

    newLibPath = lib.makeLibraryPath buildInputs
    + (":" + lib.makeSearchPathOutput "lib" "lib64" buildInputs)
    + ":$out/opt/vivaldi-snapshot/lib";

    buildInputs = oldAttrs.buildInputs ++ [ libdrm mesa ];

    buildPhase = oldAttrs.buildPhase + ''
      patchelf \
        --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
        --set-rpath "${newLibPath}" \
        opt/vivaldi-snapshot/vivaldi-bin
    '';
  }
)
