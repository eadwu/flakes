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
    version = "1722923357";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ff8504ae52f8e0d0e9a33e6cb326efc21e42db3e/code-insider-x64-1722923357.tar.gz";
      sha256 = "0ws8hc0bb8ygk74cfp5ysy59jfnkqr33cdadw7ny69ji0xaf80lg";
    };
  }
)
