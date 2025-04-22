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
    version = "1745301142";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d063e45b252c02d3f89fc9fcfc9012b6b8b7677a/code-insider-x64-1745301142.tar.gz";
      sha256 = "17ycbif2pp63f6jmx57dw664abs1w0ln704dx52lylwmyrpbs3v5";
    };
  }
)
