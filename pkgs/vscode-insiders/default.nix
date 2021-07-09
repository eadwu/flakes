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
    version = "1625811121";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/87d692b7bf1eb5a663b3e62620a6e7e436e1838c/code-insider-x64-1625811121.tar.gz";
      sha256 = "1cqw61bv3anp711hmikv4v795cvwpym42xn3brnwwsb5yrb6k9ij";
    };
  }
)
