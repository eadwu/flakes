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
    version = "1742361890";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8044250858b1c5fe64cc6b7a04f7003860d3b147/code-insider-x64-1742361890.tar.gz";
      sha256 = "1dacifcxwi5pmdx80c8z7dpmi11f2v2jn6n9h9gx7rby1iayc82b";
    };
  }
)
