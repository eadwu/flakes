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
    version = "1661912523";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/078f8e986d44de2c88f1f52bf63cecb2f8ec2560/code-insider-x64-1661912523.tar.gz";
      sha256 = "1cng7l8i9kk8q516lbv20ni4jd41hvly8g113i7zvrrkjxyp6j97";
    };
  }
)
