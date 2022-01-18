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
    version = "1642484409";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7ae7f9d40b82a0f1a49d8ad180d27e16812ad95e/code-insider-x64-1642484409.tar.gz";
      sha256 = "09g2wygpj0wsj7zcwp6zgmrbdys7pc67lfwj1nis29kw5sjgg86m";
    };

    postPatch = "";
  }
)
