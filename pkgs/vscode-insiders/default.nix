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
    version = "1652765972";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5f3e9c120a4407de3e55465588ce788618526eb0/code-insider-x64-1652765972.tar.gz";
      sha256 = "1k3xg43gzdrxh562d694y6dyrf6fayayxgzsxk6c269yk4c08650";
    };

    postPatch = "";
  }
)
