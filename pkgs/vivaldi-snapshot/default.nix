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
    version = "7.4.3682.3";

    src = fetchurl {
      url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
      sha256 = "0srcchr9njzf9ddzf9g18fn2jzphcycx42dikbgn1kjzcn3vg02q";
    };
  }
)
