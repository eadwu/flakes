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
    version = "1590340249";

    src = fetchFromGitHub {
      owner = "davatorium";
      repo = "rofi";
      rev = "1342b733af6a8de481ac35a33cb352c21efcd0b5";
      sha256 = "0gk15l69hw0l0k7n4j4mnaw0fcf4yymg2zwavkigi265ivi3m2b4";
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
