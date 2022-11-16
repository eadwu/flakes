{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1668626886";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/544f1cab668d6e8125e25574bedfc23394ca9a82/code-insider-x64-1668626886.tar.gz";
      sha256 = "08hg80p0irl7grysx518ack9xq01s0hiycan5d69ikfb2a59fcc3";
    };
  }
)
