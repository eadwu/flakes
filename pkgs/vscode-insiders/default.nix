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
    version = "1717010988";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0ead1f80c9e0d6ea0732c40faea3095c6f7f165a/code-insider-x64-1717010988.tar.gz";
      sha256 = "1274wj7454pav4z1xchw0ryimv62xxdplamrmdv9yl2n5b7i9c6h";
    };
  }
)
