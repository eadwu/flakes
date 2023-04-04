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
    version = "1680635156";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cbf35328c8357175b9cd747823f39ade987c3d3c/code-insider-x64-1680635156.tar.gz";
      sha256 = "1gzn443yq28byrj2w0sl4kj0x2zps7pd0f7x936xxv537dkj6mkr";
    };
  }
)
