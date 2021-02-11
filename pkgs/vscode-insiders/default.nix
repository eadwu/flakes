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
    version = "1613023205";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/93f705ab40b37aade9d3b5165ed09114a8c87ac9/code-insider-x64-1613023205.tar.gz";
      sha256 = "16qlgqfpz7pn52dw6r3xav4ly7rpl5lwck94vdpvzgld1ja9rpm0";
    };
  }
)
