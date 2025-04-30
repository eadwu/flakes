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
    version = "1745994901";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/049c89eefbc56491c9ba5ff8e8cfa1a87e979aab/code-insider-x64-1745994901.tar.gz";
      sha256 = "15rbkcikw9qm7vsdx3mybimwkrwdcg215dl3vx7vr8mkbb5cw4sa";
    };
  }
)
