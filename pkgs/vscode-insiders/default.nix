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
    version = "1636531993";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bef4dba21f68bbdb8d9f08fe04b2e1858597722b/code-insider-x64-1636531993.tar.gz";
      sha256 = "0l5xd8zhawvqj1lfsfvhmr97y28w3i7sj85ry9c6r84375r26j9b";
    };
  }
)
