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
    version = "1715579301";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/29aeab1cbb350107a7bd5962b5e7efe745e0a3ec/code-insider-x64-1715579301.tar.gz";
      sha256 = "08k8k1jng1rjys7rr508lmbspg21ln728qb1pfricw1rprmii6yk";
    };
  }
)
