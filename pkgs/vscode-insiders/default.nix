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
    version = "1708733796";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c11a2dd4d52e38cb92b8c464f47a7b02bb7c8762/code-insider-x64-1708733796.tar.gz";
      sha256 = "1nvy79i3s3cp1vjg5lcgq2p7xffdpnsibid8c99cfcf4jq5hv6ng";
    };
  }
)
