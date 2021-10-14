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
    version = "1634189911";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cad4c193d85f0891204da41c0508de39e7aa38c6/code-insider-x64-1634189911.tar.gz";
      sha256 = "164cvls23kpgbfnckxmafymjbgzzrd18slkmg5708hashiykiqb5";
    };
  }
)
