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
    version = "1711000082";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/09d5f4efc5089ce2fc5c8f6aeb51d728d7f4e758/code-insider-x64-1711000082.tar.gz";
      sha256 = "1080nvmbahvnc4cxwccii38dxr2x5x2jaij54y4ka8bv6p3ax85i";
    };
  }
)
