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
    version = "1741860204";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b59ae26ad3882edfec6493e280784f5395978dbd/code-insider-x64-1741860204.tar.gz";
      sha256 = "0gisrc8i9iafi49xq677vymwlifi7siq9dl16y7i0ivgba4y437s";
    };
  }
)
