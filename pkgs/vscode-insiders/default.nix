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
    version = "1711623256";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/46b756b8434730593b3c911fd1ca43366b29eb03/code-insider-x64-1711623256.tar.gz";
      sha256 = "0bj92g026n8v6sgbnlg9ggfsfrjl8k47jr7ijhjn1mgfxw5w652c";
    };
  }
)
