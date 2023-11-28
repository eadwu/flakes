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
    version = "1701149769";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/44567a1304ea91ce041fde76e07937bb47fd77ba/code-insider-x64-1701149769.tar.gz";
      sha256 = "0l675h85y40bwkjvnki1wn55yhk8xiwgp71fa832fj28p9xmzzhg";
    };
  }
)
