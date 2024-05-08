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
    version = "1715147597";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/60468916e48fe8293e7641f0fc4ada80d79117b3/code-insider-x64-1715147597.tar.gz";
      sha256 = "0bk3vqdajgj6f12nirqq25fhb05nmxa9xzn91nlk5x2gjsnv2bgh";
    };
  }
)
