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
    version = "1732513970";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6864e0b8207dea2c1bb9d781fbdb61c44e7d00e9/code-insider-x64-1732513970.tar.gz";
      sha256 = "1nf07nnbxqms9di49lvazk7c10h1rj03rfx7cp39b7njx4zjw3y3";
    };
  }
)
