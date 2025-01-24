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
    version = "1737698342";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f5782f528629d4200a964cc652055a4da43a7eb1/code-insider-x64-1737698342.tar.gz";
      sha256 = "0kf1gbnzm2r07m85zgggyn2xdbd06h67fw1aj61v9vhxrrh3r853";
    };
  }
)
