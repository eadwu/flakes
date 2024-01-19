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
    version = "1705642614";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/271fb7fbd599b49a1482ea7284a50b3229317f96/code-insider-x64-1705642614.tar.gz";
      sha256 = "1dq76kkj3v9kgrfyx0yirm3yd4xv7p0dqafkdh94x4kvsx196im4";
    };
  }
)
