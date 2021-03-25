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
    version = "1616661347";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6f726bcdf6a4d6cb518a3fcdb03c21be7293f417/code-insider-x64-1616661347.tar.gz";
      sha256 = "17hlkwgv9qdic6xap8jdq9qcsibk0g637wr2xpm7gy63cim5zakc";
    };
  }
)
