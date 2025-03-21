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
    version = "1742534676";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b87fa463df1aeec04bf1f56276cc9972bdb14124/code-insider-x64-1742534676.tar.gz";
      sha256 = "0k9bwafj7ryfknb5lrhvz1wwgg5h52hp8sfk0l8ywzp1hwg52dn5";
    };
  }
)
