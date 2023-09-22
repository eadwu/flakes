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
    version = "1695361001";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/444399e23bda3e216152098d848bd7b95d80b0e5/code-insider-x64-1695361001.tar.gz";
      sha256 = "05pdl41i2a8zqcq9gnaky5qd7c9lhbdhzr8x85bv41wx22pwn018";
    };
  }
)
