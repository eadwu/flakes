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
    version = "1729815977";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/59260b311c71846b730992d76c6358b43646eea8/code-insider-x64-1729815977.tar.gz";
      sha256 = "1ksbida8ic3l9npp5hmvhdvks9y4fydzhljic3dydwal37l611jz";
    };
  }
)
