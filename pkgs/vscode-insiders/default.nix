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
    version = "1701698916";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f8407843e15a77088e26bcb6e8a22edb7862498e/code-insider-x64-1701698916.tar.gz";
      sha256 = "09gbi6inyh7nd7izy32clwkkzihgi0j6gyp01p06rm8mgw4pvsbc";
    };
  }
)
