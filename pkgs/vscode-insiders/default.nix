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
    version = "1718776292";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c2e20cb17fae44eb26611cb9a4690059cea0e605/code-insider-x64-1718776292.tar.gz";
      sha256 = "0a9shjp3190l2z1gl2izsy6qf0yb9gpprblmzwmvmcydfc9lyd87";
    };
  }
)
