{ fetchurl
, vivaldi
, lib
, libdrm
, libxkbcommon
, libxshmfence
, mesa
, enableWidevine ? false
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
    version = "5.5.2805.30";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "1l192dnqx4g7cnyakx7gah30g3g7r1ddlpn7d73qrk525ry6h44r";
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
        --set-rpath "${newLibPath}" \
        opt/vivaldi-snapshot/vivaldi-bin

      for exe in $(find opt/vivaldi-snapshot -type f -executable); do
        echo "Patching Vivaldi binary $exe"
        # Can fail if not an ELF executable
        patchelf \
          --set-interpreter "$(cat $NIX_CC/nix-support/dynamic-linker)" \
          "$exe" || true
      done
    '';
  }
)
