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
    version = "1745214964";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ef9b85d17a8cb56ce84b2b36f352598454861620/code-insider-x64-1745214964.tar.gz";
      sha256 = "19cbpg24zlc2r5hidd824n07ln61kkf49vhki8vmhgqjh0zmnzpj";
    };
  }
)
