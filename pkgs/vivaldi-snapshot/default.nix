{ fetchurl
, vivaldi
, lib
, libdrm
, libxkbcommon
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
    version = "3.6.2165.32";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "01aiakp2bqv00iixdcfnkp6b65yy26915cj7i6fhrjjaksrfb34z";
    };

    newLibPath = lib.makeLibraryPath buildInputs
      + (":" + lib.makeSearchPathOutput "lib" "lib64" buildInputs)
      + ":$out/opt/vivaldi-snapshot/lib";

    buildInputs = oldAttrs.buildInputs ++ [ mesa libdrm libxkbcommon ];

    buildPhase = oldAttrs.buildPhase + ''
      patchelf \
        --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
        --set-rpath "${newLibPath}" \
        opt/vivaldi-snapshot/vivaldi-bin
    '';
  }
)
