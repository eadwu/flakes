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
    version = "1742899000";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fbdf6dd0792dfd4183ae3c273b1484d3451e60ab/code-insider-x64-1742899000.tar.gz";
      sha256 = "01nsa85wxz7l9anv0h5fcd5ciykkmlcl0s8binm351k89zkpjs4z";
    };
  }
)
