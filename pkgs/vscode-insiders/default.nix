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
    version = "1717464781";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/89de5a8d4d6205e5b11647eb6a74844ca23d2573/code-insider-x64-1717464781.tar.gz";
      sha256 = "1828lf3xidhnfva5c9g3z9fwvx2cnlr32b55h7j92gn8wglc73if";
    };
  }
)
