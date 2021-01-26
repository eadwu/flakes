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
    version = "3.6.2165.26";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "159j6pklq7sr7mk12alxmi19d5fgnbk18b040k3vj8v7l0ibvyrv";
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
