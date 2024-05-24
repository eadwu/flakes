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
    version = "1716571346";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b9fa819edd893c590b28f3a09b75a81513e12fb9/code-insider-x64-1716571346.tar.gz";
      sha256 = "0583nyml93dggm3mkmpvhi49l5ij3i6n77yhns6gb6zjfcxbwlbh";
    };
  }
)
