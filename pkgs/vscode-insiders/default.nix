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
    version = "1706831576";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2af613979f646fc4dcebfeaedc7d14f138c7b072/code-insider-x64-1706831576.tar.gz";
      sha256 = "1rjnl5bm86xm79cjwysdkfvcwynniv765jk32c9ynd3ix6ccrb85";
    };
  }
)
