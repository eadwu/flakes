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
    version = "1619505034";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9a4d524f909e09079fec7abb82f2efde2172da7c/code-insider-x64-1619505034.tar.gz";
      sha256 = "0zivynhakjndvk0771g7npvkp6s49rjmkj8vklsf6cj28w6zv3x4";
    };
  }
)
