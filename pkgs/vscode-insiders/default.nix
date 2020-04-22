{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587545991";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9328b32008089c515f39a13db9c71e57c7d36823/code-insider-1587545991.tar.gz";
      sha256 = "08wk913szckj5h22hg0nh8hxq017s2ynz7dqicccsivxixq7kxkl";
    };
  }
)
