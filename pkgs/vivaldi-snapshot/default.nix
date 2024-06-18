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
    version = "6.8.3381.35";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "1dmxh3dcvdwzws2fcasxpsvzry3bs1ymknx9aqyrbllpr5s8nniy";
    };
  }
)
