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
    version = "1708321659";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/11095a2781bd2a14cbaddc1b925f196f1e9452bc/code-insider-x64-1708321659.tar.gz";
      sha256 = "1a5h1c56ka2l2ywcpz4m7ifx93b8wnqsqkmibh44f37976b14ljm";
    };
  }
)
