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
    version = "1590658975";

    src = fetchFromGitHub {
      owner = "davatorium";
      repo = "rofi";
      rev = "db308d2ed5805ef6117a88f40a70817547a48092";
      sha256 = "1mg3q1zx2jnlp7n4pnp15i61qrkzqadahnqxs6415qvxyvms0l5k";
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
