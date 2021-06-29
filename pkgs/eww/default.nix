{ rustPlatform
, pkg-config
, atk
, glib
, cairo
, pango
, gtk3-x11
, gdk-pixbuf
}:

{ src, version }:

rustPlatform.buildRustPackage rec {
  pname = "eww";
  inherit src version;

  cargoLock.lockFile = src + "/Cargo.lock";
  verifyCargoDeps = true;

  nativeBuildInputs = [ pkg-config ];
  buildInputs = [ glib pango cairo atk gtk3-x11 gdk-pixbuf ];

  preConfigure = ''
    export HOME=$(mktemp -d)
  '';
}
