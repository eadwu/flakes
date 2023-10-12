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
    version = "1697089040";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/901ac65ea9f906d6996ad8e7639ba81acecf1d7c/code-insider-x64-1697089040.tar.gz";
      sha256 = "1vmbck3xng8qbph61hhhyn4ay1xxpzinrdnnh07yqbsr9xb19p56";
    };
  }
)
