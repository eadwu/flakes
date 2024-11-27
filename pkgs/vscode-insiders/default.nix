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
    version = "1732700562";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/709e28fc21bfb5ed982c04e7e5bd53279cf8869e/code-insider-x64-1732700562.tar.gz";
      sha256 = "1ppa2qzqw9jgmf4gcb3gbyiyhdk9h8xnydn11pgj4kjcf9n0b60k";
    };
  }
)
