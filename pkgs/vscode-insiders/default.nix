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
    version = "1692855144";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a0377f0c51dbb2d3188565cdf35e89929f864e65/code-insider-x64-1692855144.tar.gz";
      sha256 = "0pmkkvrv4mb5fgqvhbzpx6lkw0px7f2f1s4flm9vax33qh18vphj";
    };
  }
)
