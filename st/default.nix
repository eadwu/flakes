{ fetchFromGitLab, st }:

st.overrideAttrs (_: rec {
  name = "${pname}-${version}";
  pname = "st";
  version = "2019-04-22";

  src = fetchFromGitLab {
    owner = "eadwu";
    repo = "st";
    rev = "df019427f86d0edff5c438becf047fe97a7d50ca";
    sha256 = "1lihqk5iash5a3wh0jdyp71n9mdid5byw53mnfqa13pjgx94ip1m";
  };
})
