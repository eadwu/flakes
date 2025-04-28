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
    version = "1745840173";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c456afbf30ea22be07e2ec867db6c024ca7748ca/code-insider-x64-1745840173.tar.gz";
      sha256 = "0ws7syvl43akj3f1b2l0p08rn6z799wsrq9x2f80yjabfpsy9jvl";
    };
  }
)
