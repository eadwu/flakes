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
    version = "6.2.3105.28";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "16njscxdvkksz4fsrnpgf50z545fkizqz32vgvgmavs9g3nd0hsi";
    };
  }
)
