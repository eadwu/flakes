{ fetchFromGitLab, dwm }:

dwm.overrideAttrs (_: rec {
  name = "${pname}-${version}";
  pname = "dwm";
  version = "2020-04-03";

  src = fetchFromGitLab {
    owner = "eadwu";
    repo = "dwm";
    rev = "";
    sha256 = "1q8sl55qqaizdb941pj759wcdpykvpwmbfvcfciw7sahgg1l21f1";
  };
})
