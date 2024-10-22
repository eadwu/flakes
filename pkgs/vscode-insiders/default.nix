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
    version = "1729576126";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/defe52dc43e6f5d861f55600ff01f7553fac7eaf/code-insider-x64-1729576126.tar.gz";
      sha256 = "19xnr1ixp4la03jzxacrg9r81qnpgxn0v2ppkikxdq90i3hq9w9v";
    };
  }
)
