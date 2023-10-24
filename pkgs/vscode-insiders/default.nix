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
    version = "1698125609";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7dff07893ac160244db210e574eccc05f1cba2cb/code-insider-x64-1698125609.tar.gz";
      sha256 = "134hl8v85gj24bybvrq56l8zs12nx0pbc9qrvlbz2l9r3swfcahv";
    };
  }
)
