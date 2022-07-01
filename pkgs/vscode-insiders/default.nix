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
    version = "1656654163";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0b3574dcef8f35fec4ee4f83dc958c1f16ef6fce/code-insider-x64-1656654163.tar.gz";
      sha256 = "0b49si2zllh3xzbk4xrc5nzjamjqyz3p1w5f6qxzlcvv458q7jfg";
    };
  }
)
