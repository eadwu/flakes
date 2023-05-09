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
    version = "1683611113";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d1aa00acef8b2cfa88621c448b8fd8cd034f60a9/code-insider-x64-1683611113.tar.gz";
      sha256 = "05hrbqyirhc97f6jymnk4g2flivnb8hr5gk0sxm7nagwjmw1aq96";
    };
  }
)
