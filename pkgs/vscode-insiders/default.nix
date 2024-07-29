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
    version = "1722289062";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1d82f317af9c90b96a433fd6a599e4b1d31869a3/code-insider-x64-1722289062.tar.gz";
      sha256 = "1bw4hpis6yyz5kw8jjw3p2899rhzzrf1cvf5j5ah36v8jx685dq6";
    };
  }
)
