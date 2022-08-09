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
    version = "1660039658";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fe946068ba8ed2c4db200483dbec89210fea1332/code-insider-x64-1660039658.tar.gz";
      sha256 = "1gisjn6xzary5ghhgbn9gy7v7ry45ivg7j1fj46v9k4yyb1j4j14";
    };
  }
)
