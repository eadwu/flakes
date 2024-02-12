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
    version = "1707754156";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7c15c66607256592202cc051fb3e117baf54af63/code-insider-x64-1707754156.tar.gz";
      sha256 = "09qnpahll6pdkg4r11ix9i0dp276gmjvkc3xa3h1arka2icg3j3l";
    };
  }
)
