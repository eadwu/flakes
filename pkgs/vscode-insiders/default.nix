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
    version = "1723009970";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d4c4e690b9f1e70291da9a46c5c8ac5ebfbda81a/code-insider-x64-1723009970.tar.gz";
      sha256 = "081s8ylmrs81zb38q6dgdix7n3nsiwqd60a43s7a6i7mlpvhkdlk";
    };
  }
)
