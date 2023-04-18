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
    version = "1681796654";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/95396f14dbae4d5def754d8635010f8e5743f56c/code-insider-x64-1681796654.tar.gz";
      sha256 = "0c08zsbjh4w8yb82xk47b81a6vs06zlkc5c8n84linhv6blikivm";
    };
  }
)
