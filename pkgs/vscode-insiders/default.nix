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
    version = "1691773856";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/76985ae7814f7cb28e2df6f1025d279bb77cbec1/code-insider-x64-1691773856.tar.gz";
      sha256 = "14vfais5hgw86rk7sskj1hhi85qgrkp57hlcqf8b0xz45zcwvvvg";
    };
  }
)
