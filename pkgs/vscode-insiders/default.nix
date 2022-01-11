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
    version = "1641879928";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fd745e79f5c08e96e6c8a5b7bceaaaa417d098d5/code-insider-x64-1641879928.tar.gz";
      sha256 = "0815s7cdq5kggm2kcnip2n5kb73ssa5i956p28sxwhcfnl6g4ziy";
    };

    postPatch = "";
  }
)
