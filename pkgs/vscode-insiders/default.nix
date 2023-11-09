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
    version = "1699508110";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f346494c77e1245505e53a2ddcab3bfb4ee52e08/code-insider-x64-1699508110.tar.gz";
      sha256 = "1sqysbm9ann9azhhnsfbyjig57z89zs8nbln7zwlqz4yqqw11zxb";
    };
  }
)
