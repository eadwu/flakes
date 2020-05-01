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
      version = "1588230568";

      src = fetchFromGitHub {
        owner = "davatorium";
        repo = "rofi";
        rev = "80fc8e16b2c4294e7ee282f7e1f5bce88c3129d7";
        sha256 = "15kisl850yqpi391yai7cl662xf3spiqir4q027vcbg188jj24y7";
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
