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
    version = "1705901739";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e244acbb172c428cb219717a07bf55d2737492ca/code-insider-x64-1705901739.tar.gz";
      sha256 = "0sclq7f3nai7yzj1ry49i9lpmfv5nca9f0wmi670wsr78h21wb6y";
    };
  }
)
