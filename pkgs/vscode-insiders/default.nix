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
    version = "1620169672";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cfa2e218100323074ac1948c885448fdf4de2a7f/code-insider-x64-1620169672.tar.gz";
      sha256 = "0rki586wldy8na881apa67vqfkxndph4lsca6n2gfbfi00dm8pb1";
    };
  }
)
