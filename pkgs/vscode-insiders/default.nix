{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598344170";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4ccab0deda29628076ce1bbb17e9fef239337f21/code-insider-1598344170.tar.gz";
      sha256 = "03iaydyfipas8idjslcsayyc4yaylly17m973h4f2kvjpl0cdlmg";
    };
  }
)
