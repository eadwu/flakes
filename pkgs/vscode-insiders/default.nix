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
    version = "1712052729";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b831801945400c785b138698d9df9896ced796b7/code-insider-x64-1712052729.tar.gz";
      sha256 = "0vxa0fni2fwrfjinp1capnw9k0scgqhhy93ji57140szljphfj1s";
    };
  }
)
