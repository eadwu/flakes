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
    version = "1737092960";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a74aabd9bb87c33b047c822aa79d265bc5f5543e/code-insider-x64-1737092960.tar.gz";
      sha256 = "14khswjg7fw6g95ddnha9f92vr74xibyx60aq5fpy1h0chw1k7vg";
    };
  }
)
