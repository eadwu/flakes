{ fetchFromGitLab, st }:
{ src, version }:

st.overrideAttrs (
  _: rec {
    name = "${pname}-${version}";
    pname = "st";
    inherit src version;
  }
)
