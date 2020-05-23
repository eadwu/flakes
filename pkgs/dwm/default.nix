{ fetchFromGitLab, dwm }:

dwm.overrideAttrs (
  _: rec {
    name = "${pname}-${version}";
    pname = "dwm";
    version = "2020-03-22";

    src = fetchFromGitLab {
      owner = "eadwu";
      repo = "dwm";
      rev = "991663dae7e73322cd87b98bc723e3f3c360c536";
      sha256 = "1r3a8161hn9xa5q8di1w3fll9q0x0r620vm6dj2c0pi0hkakhm8j";
    };
  }
)
