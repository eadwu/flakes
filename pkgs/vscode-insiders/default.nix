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
    version = "1711603566";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7caf8b6cfe76d22c6aff3d7aa22dd9f494266ecc/code-insider-x64-1711603566.tar.gz";
      sha256 = "1vp45rpghczai3cxsahpssnj051hsnpf5yv7pmms24xp6kxsn2h9";
    };
  }
)
