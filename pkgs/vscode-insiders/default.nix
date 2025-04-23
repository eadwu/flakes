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
    version = "1745385731";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/cb66f895f960afe46db5f13a622d9dd9aea9bc8e/code-insider-x64-1745385731.tar.gz";
      sha256 = "0zqh85mhi3g0j102xw43ppp12xn8f8fn4q5jb745wjn0d105k4in";
    };
  }
)
