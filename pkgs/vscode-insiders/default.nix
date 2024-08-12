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
    version = "1723452147";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b60fe002f59dbc364ba3af905cefd6575bfe717b/code-insider-x64-1723452147.tar.gz";
      sha256 = "0jfk36a0bgdslbbbz7ngz65r93il6gb5c0df6bz2dxdv9f8lk27f";
    };
  }
)
