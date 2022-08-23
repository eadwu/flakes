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
    version = "1661269832";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d5104dc1894e4a78b600662bf8958c7a2b9286a7/code-insider-x64-1661269832.tar.gz";
      sha256 = "083mn5yw2726x2pww178094l2h1f6z5biyd1sg3fiqxvl9rnl785";
    };
  }
)
