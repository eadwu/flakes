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
    version = "1702532230";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/789c802e75813bfb38ff2e13e4b322bd7e90124b/code-insider-x64-1702532230.tar.gz";
      sha256 = "1dy917b8n16b767arhavqnxc2s453h1iq4alhqrz7zr1afvap3kd";
    };
  }
)
