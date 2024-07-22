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
    version = "1721627322";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/97d1b933ada0ca69bea107f7a89e029991277ccc/code-insider-x64-1721627322.tar.gz";
      sha256 = "1v4i9vspav4cm9x2h1qdjyiprghkwnr5sn3f88sfaf4vhdiynylm";
    };
  }
)
