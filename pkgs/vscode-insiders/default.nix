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
    version = "1723787400";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d751e4324d12370e950f8cd031aa8829637ce300/code-insider-x64-1723787400.tar.gz";
      sha256 = "0nhj2n5rwxlc0hrzimml9n2d7kkvd1zbp2j0v0z124jvg93ywmcy";
    };
  }
)
