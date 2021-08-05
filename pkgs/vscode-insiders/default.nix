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
    version = "1628200548";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a4eb4d688477fb9f2176bb2ed932b0b1726caed3/code-insider-x64-1628200548.tar.gz";
      sha256 = "0v6ckd96sj5skfj6jiakkbf7nd72rczg48jhgy09wbacdisfcdcg";
    };
  }
)
