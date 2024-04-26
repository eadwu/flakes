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
    version = "6.7.3329.19";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "1y0q8s7mzbd59ylsa5w39adkmjd828q432d7b7qa45hik6mmw37c";
    };
  }
)
