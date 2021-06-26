{ rustPlatform
, pkgconfig
, atk
, glib
, cairo
, pango
, gtk3-x11
, gdk_pixbuf
}:

{ src, version }:

rustPlatform.buildRustPackage rec {
  pname = "eww";
  inherit src version;

  cargoLock.lockFile = src + "/Cargo.lock";
  verifyCargoDeps = true;

  nativeBuildInputs = [ pkgconfig ];
  buildInputs = [ glib pango cairo atk gdk_pixbuf gtk3-x11 ];

  preConfigure = ''
    export HOME=$(mktemp -d)
  '';
}
