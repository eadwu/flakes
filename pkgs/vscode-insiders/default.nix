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
    version = "1761559554";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/facd8c599d37687ac5a9864bbea93d39d67ed963/code-insider-x64-1761559554.tar.gz";
      sha256 = "0xa7a6pdl0g467mn9a5rzbm7a5ganvkl52fdbck6mdin7rbj4n02";
    };
  }
)
