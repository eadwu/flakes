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
    version = "1712119570";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/57028e3d274ebde851c7cc02123def372ca619a6/code-insider-x64-1712119570.tar.gz";
      sha256 = "13pag0hcdbqw2gs4c1qlcsqp8a0pyhxx25wzah0m2mrd045083p8";
    };
  }
)
