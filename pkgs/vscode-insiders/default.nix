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
    version = "1614144636";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4e1234963a10831b2cf76ff08c4c657e3b7a2866/code-insider-x64-1614144636.tar.gz";
      sha256 = "0cw11dp5d2bcdh14ygwkwbckg2a9g1vc9dpmglp290y8yn7p14d8";
    };
  }
)
