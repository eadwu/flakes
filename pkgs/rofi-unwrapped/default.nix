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
    version = "1590046555";

    src = fetchFromGitHub {
      owner = "davatorium";
      repo = "rofi";
      rev = "3604b12fde54ffe0b049dd2f47ece4eba5689989";
      sha256 = "0lhf6xqhwj9y83mcnwrqddff6z80vs4scndq5q2wcvnpk13x360v";
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
