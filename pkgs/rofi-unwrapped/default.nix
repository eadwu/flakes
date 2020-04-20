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

rofi-unwrapped.overrideAttrs (
  _: rec {
    version = "1587374913";

    src = fetchFromGitHub {
      owner = "davatorium";
      repo = "rofi";
      rev = "b86109295dd2cd40ea6216b2df39beae59e28922";
      sha256 = "10bb7mnn2pfparbc479w1qrhlga0hndaaw5bja3kds78k49nh0s6";
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
