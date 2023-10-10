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
    version = "1696916202";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/eb4f3c149f34d82b9763a08230907cf79e7fc103/code-insider-x64-1696916202.tar.gz";
      sha256 = "14sqqv5pkcgf2xs46s7n8qpvw2vmx5db2hb7jh7dvwr2s2cydk09";
    };
  }
)
