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
    version = "1663740510";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/333754f29b719f605904f072b13c054c2231b9bd/code-insider-x64-1663740510.tar.gz";
      sha256 = "0zdb8wsjmhr6wh46py596a3d2jgqjnaf9gqha84qv509yyj6dcsh";
    };
  }
)
