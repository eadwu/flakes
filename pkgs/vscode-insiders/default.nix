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
    version = "1665726378";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7ef8e6b87a2a5a25ba1ef946bd1640ca3510956c/code-insider-x64-1665726378.tar.gz";
      sha256 = "1s565ivzcp8dr4fnvc40k7vmkqlal44zr1x6ich5wcps772r9w4d";
    };
  }
)
