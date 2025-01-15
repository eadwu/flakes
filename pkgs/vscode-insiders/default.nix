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
    version = "1736920421";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1db1071148a1efa3b7ad7592d64507ef52536a3e/code-insider-x64-1736920421.tar.gz";
      sha256 = "1r58qwrrav60dvk3ssz8msmd36i76v8r9c6cjxmajygxf4gad821";
    };
  }
)
