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
    version = "1740115451";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/233d086d5a613a1e9f016986f5ff056c17322c31/code-insider-x64-1740115451.tar.gz";
      sha256 = "1869br6azzsbdb9bnb13cz9bz0n6776q74qrkx5hfx5z487zr9wv";
    };
  }
)
