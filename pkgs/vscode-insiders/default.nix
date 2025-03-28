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
    version = "1743119334";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/88c05937becd43f3bc9457b65f2185e4cdaeae6e/code-insider-x64-1743119334.tar.gz";
      sha256 = "0my2inz5dh6m2bk7bw0ppkmfin4nzryp2nydfakqzfc0f37zapd6";
    };
  }
)
