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
    version = "1622611843";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/217f1a2f60a197807de78af362ecb832100fda96/code-insider-x64-1622611843.tar.gz";
      sha256 = "1r58fkpa7bryx2bp281wwsybaqkqvmcazp5lkjhlgrjmkhsylidf";
    };
  }
)
