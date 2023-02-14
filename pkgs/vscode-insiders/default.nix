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
    version = "1676353724";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/af4a70d991053dcbf64d9a86c76a02dced81d9c4/code-insider-x64-1676353724.tar.gz";
      sha256 = "03v5jak6vb651pgq4a36zkvixk6c4wbi9mj0zh6zagcj1x16lc6m";
    };
  }
)
