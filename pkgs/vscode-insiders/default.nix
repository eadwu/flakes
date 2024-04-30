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
    version = "1714431319";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/dfa434a13c74b847c9edc4a82e5ca0588f24ce9d/code-insider-x64-1714431319.tar.gz";
      sha256 = "0b4w70y51mngdmf4wjg5rfgvk7n5lmvzh34pfqn11awvniqjjgqm";
    };
  }
)
