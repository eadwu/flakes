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
    version = "1612503054";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/52838cf6799cc448e738677ec37e86cf62a5bd89/code-insider-x64-1612503054.tar.gz";
      sha256 = "06scx6fy8jzg61hqkyp6x49d10jyz3ra31cxn0fn7vmhg6bwlc21";
    };
  }
)
