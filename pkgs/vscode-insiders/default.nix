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
    version = "1730440040";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4520d915c98954dc96dd0bc00b8bb68181cbf2b6/code-insider-x64-1730440040.tar.gz";
      sha256 = "1b4fhybblyrb1vp43z9qmwrzfhfj6sshwly76zap8bpkwawzkphp";
    };
  }
)
