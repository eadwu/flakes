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
    version = "1614713253";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/42e27fe5cdc58539dad9867970326a297eb8cacf/code-insider-x64-1614713253.tar.gz";
      sha256 = "03zsa1wcp7ajh1n0nzg1z4q22nr5mnlb9h2n8nw62g3qh1smz8cb";
    };
  }
)
