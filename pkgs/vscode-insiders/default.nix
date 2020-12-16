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
    version = "1608113433";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2f8dee4d87cf215fd2ece45aa4ecfb097b345788/code-insider-x64-1608113433.tar.gz";
      sha256 = "13fzrigdwisi8li8mi9hwwg5l1zbwp0acv2fiv1mpg9x9rysdqc6";
    };
  }
)
