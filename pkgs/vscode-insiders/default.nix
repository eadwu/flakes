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
    version = "1740393393";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fa907e1b4967c7db216f988d9ae551c2d8e0edd5/code-insider-x64-1740393393.tar.gz";
      sha256 = "1fm5wyc292l09pm16gfqzmkbarg024b7f6pmvcmx3dwqpawjc10r";
    };
  }
)
