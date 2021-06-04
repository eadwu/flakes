{ fetchurl
, vivaldi
, lib
, libdrm
, libxkbcommon
, libxshmfence
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
    version = "4.0.2312.11";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "0inyv0nfdlxd2l2fi2wa5q6r7k4j4kdrgl1l78flyn3qml1al5pf";
    };

    newLibPath = lib.makeLibraryPath buildInputs
      + (":" + lib.makeSearchPathOutput "lib" "lib64" buildInputs)
      + ":$out/opt/vivaldi-snapshot/lib";

    buildInputs = oldAttrs.buildInputs ++
      [
        mesa
        libdrm
        libxkbcommon
        libxshmfence
      ];

    buildPhase = oldAttrs.buildPhase + ''
      patchelf \
        --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
        --set-rpath "${newLibPath}" \
        opt/vivaldi-snapshot/vivaldi-bin
    '';
  }
)
