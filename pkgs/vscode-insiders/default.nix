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
    version = "1718862545";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6afc1c279374106ca4c60382c0d92ed661f4c7e4/code-insider-x64-1718862545.tar.gz";
      sha256 = "1qshjz495czrxzxkzkks58pi1l2gzs9cdwyspmcd25kkfxlq1gf8";
    };
  }
)
