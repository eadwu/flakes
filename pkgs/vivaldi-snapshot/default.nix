{ fetchurl
, callPackage
, enableWidevine ? false
, proprietaryCodecs ? false
}:

(
  (callPackage ./vivaldi.nix { }).override {
    branch = "snapshot";
    vivaldiName = "vivaldi-snapshot";
    inherit enableWidevine proprietaryCodecs;
  }
).overrideAttrs (
  oldAttrs: rec {
    pname = "vivaldi-snapshot";
    version = "";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "1sfjsz65h0l06vac98n0sj552y8zwp3j9sjxqanlsymzmza34474";
    };
  }
)
