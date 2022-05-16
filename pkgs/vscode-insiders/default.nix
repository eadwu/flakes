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
    version = "1652679678";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c23f0305dbf82b2319b198f4dbf3c5d5bc522f15/code-insider-x64-1652679678.tar.gz";
      sha256 = "06bqqybcjpnrdg19a1bxzb588cwq8l08x19zkdr151jjn431awkx";
    };

    postPatch = "";
  }
)
