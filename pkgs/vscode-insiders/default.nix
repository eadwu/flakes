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
    version = "1725629691";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a162831c17ad0d675f1f0d5c3f374fd1514f04b5/code-insider-x64-1725629691.tar.gz";
      sha256 = "1vckzrvn9czjl1v4558b53f1sag177k0ln34hqgqcclvrndbbmsc";
    };
  }
)
