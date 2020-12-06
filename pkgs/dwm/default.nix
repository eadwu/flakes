{ fetchFromGitLab, dwm }:
{ src, version }:

dwm.overrideAttrs (
  _: rec {
    name = "${pname}-${version}";
    pname = "dwm";
    inherit src version;
  }
)
