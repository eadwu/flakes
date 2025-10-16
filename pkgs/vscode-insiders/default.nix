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
    version = "1760592117";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9722262df14632ac3c1f167a7b162a12a5bee509/code-insider-x64-1760592117.tar.gz";
      sha256 = "0chj93dsn4sqgc5fqa46gnxys03rpbazdq40gy5sdlh9ra9rzs3f";
    };
  }
)
