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
    version = "1616131765";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e4b1e9ac57ab3cc942ab9bff09967bf3238a7910/code-insider-x64-1616131765.tar.gz";
      sha256 = "0iii2r5q5rh2l650jzk752pha20ynlpym1ac4zlrhpzyvwvrjl53";
    };
  }
)
