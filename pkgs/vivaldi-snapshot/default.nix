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
    version = "6.6.3271.33";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "1mx3xhww2gkggrfhkzim1hr12xxc7x1rhlvdk8l8q088dnq2sd07";
    };
  }
)
