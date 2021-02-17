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
    version = "1613548663";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3f0d8a14759cddea93f0dbddc12a4ef1e5586e86/code-insider-x64-1613548663.tar.gz";
      sha256 = "0gf2fvifswvlwx24s9bd70q4j4dxgp7n2481giwka3b3rd9xy27s";
    };
  }
)
