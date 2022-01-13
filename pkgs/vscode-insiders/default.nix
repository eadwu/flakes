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
    version = "1642111222";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0e435cf51d0e45293a94466fc3b1299ba70fa9b1/code-insider-x64-1642111222.tar.gz";
      sha256 = "1cj3is16k624245i14vkvys07f9z0kfxsvys8jkpgprxjvwyxj8h";
    };

    postPatch = "";
  }
)
