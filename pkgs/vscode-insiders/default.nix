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
    version = "1732775851";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2aceb1d827febabfed0627db9c72d747d98a3200/code-insider-x64-1732775851.tar.gz";
      sha256 = "0xv4f18cz438id4i3p99dp4mp551ccma514xin98pcinnikakn23";
    };
  }
)
