{ fetchurl, vivaldi }:

vivaldi.overrideAttrs(_: rec {
  pname = "vivaldi-snapshot";
  version = "2.12.1867.3";

  src = fetchurl {
    url = "https://downloads.vivaldi.com/snapshot/vivaldi-snapshot_${version}-1_amd64.deb";
    sha256 = "01ysi8yfs4kcvjc9ly39fj8mgvbjw050nh5ibachc39lpjqcdymi";
  };
})
