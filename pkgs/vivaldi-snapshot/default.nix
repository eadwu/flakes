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
    version = "3.0.1874.5";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "1x81x9ghn66shb928zglpd3m3nh4wqgdkrdr76yr08jlzywbivzb";
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
