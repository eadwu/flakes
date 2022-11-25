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
    version = "1669364735";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d0e44be43287acadb13f7c2808332e00fe52568d/code-insider-x64-1669364735.tar.gz";
      sha256 = "1488p4d0nspd7jgyaigwfa34p5hykli3nbn2gm9yz14d3i04s1m2";
    };
  }
)
