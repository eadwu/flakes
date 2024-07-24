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
    version = "1721855907";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5fe066f8ebb29e7e7697f240e3aac4e6d733d993/code-insider-x64-1721855907.tar.gz";
      sha256 = "12xgpqrbgql36sr4d4xpsr85yabqhmiyiah9yca58w9k8qazl83p";
    };
  }
)
