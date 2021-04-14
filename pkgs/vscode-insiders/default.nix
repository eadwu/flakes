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
    version = "1618402846";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/94d369e27d19f598228961e9feb0413f2edabe5d/code-insider-x64-1618402846.tar.gz";
      sha256 = "13w75b62jnvc6mhk1x8z361fh2c55s5mwpjv8hpzglqh6a74v17a";
    };
  }
)
