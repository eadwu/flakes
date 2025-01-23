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
    version = "1737631777";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/cc14c75c962284dfd2e2493dd487e3b81fb15d23/code-insider-x64-1737631777.tar.gz";
      sha256 = "1hk5ybkzdcr23cx2p3wmk5b9gv6g4blwrcr9n9x2qf8vgc5c0nya";
    };
  }
)
