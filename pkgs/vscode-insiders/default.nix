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
    version = "1605526631";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8f9aeb83da26902e21ca41f8d17d204d2ac216cf/code-insider-x64-1605526631.tar.gz";
      sha256 = "1ds3pcba76yqh750c2dfswy1qgqr2fwb6y7bn1jrhbbvb8pmy2jr";
    };
  }
)
