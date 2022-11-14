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
    version = "1668422348";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3fb8e8feb1c93a490feb2c2259713d4c8f0e0058/code-insider-x64-1668422348.tar.gz";
      sha256 = "0qb05s0nkga4ndshrf0bsvn39sc4sb582a4rsjl57bsx9vhq3gzx";
    };
  }
)
