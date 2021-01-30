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
    version = "1611957819";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/861a88ebadb4335df92251faf6420b598440e082/code-insider-x64-1611957819.tar.gz";
      sha256 = "0kia97z2bzn8ql1hicy68mxqaz3szakif6785lklxlbjc1iyya90";
    };
  }
)
