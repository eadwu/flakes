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
    version = "1707976024";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e587755905208e47725c5196539c4ca898255fe6/code-insider-x64-1707976024.tar.gz";
      sha256 = "098rs73j69rar3qapa742i6w7sxrcwv0k0kfw62qj2zm4zjb6pzb";
    };
  }
)
