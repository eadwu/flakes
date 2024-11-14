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
    version = "1731563276";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/841e8b187db105c686aab655d8f966c154e66a7f/code-insider-x64-1731563276.tar.gz";
      sha256 = "1qab8ihxqql9mg5cf6yvs5m9j2ikvbx4xpb80f5n10h7f00i04fr";
    };
  }
)
