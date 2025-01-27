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
    version = "1737959651";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a1fc8c144985285527fcceb7adfa5f66b6bb5399/code-insider-x64-1737959651.tar.gz";
      sha256 = "0dh5mny41ghjby19byayinavs3bjam63nj2vhqrqwpnq6rk3ylcs";
    };
  }
)
