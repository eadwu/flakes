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
    version = "1614058378";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd74308b5abbbb2f5a5df0f0d8a3bef606652d36/code-insider-x64-1614058378.tar.gz";
      sha256 = "1pncrv5jn8q5yyxyvy06qy9m6fz5fxdick1rsj6hz8xqi657yjjf";
    };
  }
)
