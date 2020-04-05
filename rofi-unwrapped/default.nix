{ fetchFromGitHub, rofi-unwrapped
, meson, ninja, pkgconfig
, flex, bison, check, pango, cairo, glib, librsvg, libstartup_notification
, libxkbcommon, libjpeg, libxcb, xcbutil, xcbutilwm, xcbutilxrm
, git, which
, xkeyboard_config }:

rofi-unwrapped.overrideAttrs (_: rec {
  version = "2020-04-01";

  src = fetchFromGitHub {
    owner = "davatorium";
    repo = "rofi";
    rev = "c1ac4804c2dccb6a6b96fff5ca2c78448e9e5518";
    sha256 = "1achgk3220h0h2p73wnajah6nl6y2dgq199zc9wvz4rc0xxafbpp";
    fetchSubmodules = true;
  };

  nativeBuildInputs = [ meson ninja pkgconfig ];

  buildInputs = [ flex bison check pango cairo glib librsvg libstartup_notification
                  libxkbcommon libjpeg libxcb xcbutil xcbutilwm xcbutilxrm
                  git which
                  # libnkutils
                  xkeyboard_config ];

  buildFlags = [
    "-Dcheck=true"
  ];
})
