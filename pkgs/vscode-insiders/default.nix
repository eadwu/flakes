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
    version = "1621229277";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/82767cc1d7bf8cdea0f2897276d5d15aee91f3d9/code-insider-x64-1621229277.tar.gz";
      sha256 = "0906jmvwskc370a46inabi4zx311sxyw1xh284qsinm90zc4v7k2";
    };
  }
)
