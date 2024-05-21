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
    version = "1716246700";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/405ce83a24f38fd70751b03438763a1503329fe0/code-insider-x64-1716246700.tar.gz";
      sha256 = "1660pihsyhjs2ilpwqjz1py68fyrdgv6ghmk8rl1rx855xl3m97g";
    };
  }
)
