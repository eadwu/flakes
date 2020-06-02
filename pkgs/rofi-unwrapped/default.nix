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
    version = "1591082226";

    src = fetchFromGitHub {
      owner = "davatorium";
      repo = "rofi";
      rev = "4821320833216c37ffb334700c9dfec50fcea37e";
      sha256 = "0ic78xc07wmp0qk5j2py39xa2ci2wh36fa0i8c8gq9m6zpv0r5dh";
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
