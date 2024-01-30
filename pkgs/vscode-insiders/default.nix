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
    version = "1706651017";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8c08612b658a37f96892f8ed5a9c6e7a6667847d/code-insider-x64-1706651017.tar.gz";
      sha256 = "02mxbgzky5p3xqmpjg1vy677h0sg1pblsx7mlrpn1q3rr1dkcg07";
    };
  }
)
