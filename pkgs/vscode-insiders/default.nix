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
    version = "1708580869";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a0b90ac5e04ea9a0733b68062253a469994e170e/code-insider-x64-1708580869.tar.gz";
      sha256 = "085aav6wac3h6939zxdl77pr2060kzp5qhzyrqdms38a0bayi98r";
    };
  }
)
