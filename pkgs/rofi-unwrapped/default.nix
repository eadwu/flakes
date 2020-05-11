{ fetchFromGitHub
, rofi-unwrapped
, meson
, ninja
, pkgconfig
, flex
, bison
, check
, pango
, cairo
, glib
, librsvg
, libstartup_notification
, libxkbcommon
, libjpeg
, libxcb
, xcbutil
, xcbutilwm
, xcbutilxrm
, git
, which
, xkeyboard_config
}:

rofi-unwrapped.overrideAttrs
  (
    _: rec {
      version = "1589118440";

      src = fetchFromGitHub {
        owner = "davatorium";
        repo = "rofi";
        rev = "865821f829e4307b84da55c4576020de50d071e1";
        sha256 = "1rphprhc4pzlp3y00g8yb2c9sa4k04xmx54a12g4534zvidqd9zp";
        fetchSubmodules = true;
      };

      nativeBuildInputs = [ meson ninja pkgconfig ];

      buildInputs = [
        flex
        bison
        check
        pango
        cairo
        glib
        librsvg
        libstartup_notification
        libxkbcommon
        libjpeg
        libxcb
        xcbutil
        xcbutilwm
        xcbutilxrm
        git
        which
        # libnkutils
        xkeyboard_config
      ];

      buildFlags = [
        "-Dcheck=true"
      ];
    }
  )
