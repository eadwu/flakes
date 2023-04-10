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
    version = "1681142461";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7f03ec6f7a48791d8027761b22773b454fc52478/code-insider-x64-1681142461.tar.gz";
      sha256 = "1irgmf8pflmh44k5gsfz1587nxkcx703wq605zzl0cdzr9bbiycs";
    };
  }
)
