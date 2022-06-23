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
    version = "1655963172";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/668c538b8d2fec1258ed786ae212124d6d68023c/code-insider-x64-1655963172.tar.gz";
      sha256 = "14frqk6fxg2prc9z7ayp9v6iaq7rnalc6i08pd5969za1fj9sk10";
    };
  }
)
