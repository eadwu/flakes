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
    version = "1709531177";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/61187a0b6547df5911a0ee259f7afda46bac7ec3/code-insider-x64-1709531177.tar.gz";
      sha256 = "0i395m1h2fdxyk9q7agvmm0vnv8zcfm58cf28gpimykm4g7xmbfr";
    };
  }
)
