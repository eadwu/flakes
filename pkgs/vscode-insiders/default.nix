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
    version = "1761163956";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2e77c17d50b9e2bc71c5e41b9b0c33ab42f32a83/code-insider-x64-1761163956.tar.gz";
      sha256 = "0a26vswy73gyjjyjcsrnq2s39pwjhnciylah8kh4h16xgzna5zvp";
    };
  }
)
