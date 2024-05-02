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
    version = "1714628978";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/03dd3c3b93322b41fe108a3448308595ee7077a4/code-insider-x64-1714628978.tar.gz";
      sha256 = "1iklw965idmjcis24mqv5ipw3p7hi0fla8saab08rg0hxrcp1qiq";
    };
  }
)
