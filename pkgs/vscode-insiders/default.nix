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
    version = "1663226015";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cfc01197555cb14a0d2d3463b331ce41de5733be/code-insider-x64-1663226015.tar.gz";
      sha256 = "1m0n08r2h0qvxxb60xwli1ngircj5gk4ya9acj44k0jy4jgcs4a5";
    };
  }
)
