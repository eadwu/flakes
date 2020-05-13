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
      version = "1589379912";

      src = fetchFromGitHub {
        owner = "davatorium";
        repo = "rofi";
        rev = "f2b6cf6b3cdc3211ec17634358765fdb7898dcf1";
        sha256 = "1rbijbpdp725vvai3fbb4sd5skw1pjw58qsm1vgrdi20cb49yxld";
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
