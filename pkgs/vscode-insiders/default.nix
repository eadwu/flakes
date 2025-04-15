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
    version = "1744694531";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c73f02083edc88e5c72a8c6cc301fb8a6430493f/code-insider-x64-1744694531.tar.gz";
      sha256 = "0jba86265vs6ls035489abrm51zsaxxjxfm552yrkic9jrdvzrkp";
    };
  }
)
