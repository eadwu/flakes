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
    version = "1630916931";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a3fce6207d9364afcfccaa55efc82ff8a392fdd5/code-insider-x64-1630916931.tar.gz";
      sha256 = "1bk5cnhjs6qwj5y2s7k5wlwl0lwxs0bx63921g8xjgxb9im5rh5b";
    };
  }
)
