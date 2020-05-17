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
      version = "1589719838";

      src = fetchFromGitHub {
        owner = "davatorium";
        repo = "rofi";
        rev = "a4c5a92199249369f1f312f83f6ac3995c6c64f9";
        sha256 = "03a4ag07j8vrz18h3b5ihwz0kj40rlg2w821yppkw0kdbqrqprcn";
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
