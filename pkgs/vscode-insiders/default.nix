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
    version = "1727414556";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3d6f6d2df349a34d5687126285379604ac9f02df/code-insider-x64-1727414556.tar.gz";
      sha256 = "1yybzb29p2vph2a5v7b9mis9rlc6q1lif5ng4cdxn4349sii1fir";
    };
  }
)
