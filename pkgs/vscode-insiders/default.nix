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
    version = "1718257871";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0a417782b1781d39803b8f1791cfb22f8835ddae/code-insider-x64-1718257871.tar.gz";
      sha256 = "1l8ajdfrnx8zjjz5jwr9986nrcinf371avwfqm2rc7abzjpfzayf";
    };
  }
)
