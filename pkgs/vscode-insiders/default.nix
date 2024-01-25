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
    version = "1706167854";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3dea5cbbcb88d7f6dad71148f3d3f98b853ab836/code-insider-x64-1706167854.tar.gz";
      sha256 = "1f6md1pywd7c8092xlk278dchdi949bmhkd5b9s7wbxxhhd3h5b0";
    };
  }
)
