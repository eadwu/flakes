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
      version = "1589453618";

      src = fetchFromGitHub {
        owner = "davatorium";
        repo = "rofi";
        rev = "ec6549748b6ec76cc7c13b8a5b117a3556996cc1";
        sha256 = "0ngbnlvk06m9xd88sbkkga455f00r8n6js8m4ryv5k6ldpq2w94r";
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
