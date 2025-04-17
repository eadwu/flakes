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
    version = "1744867771";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f56819db693dba84feb3716e278b5be0a7378633/code-insider-x64-1744867771.tar.gz";
      sha256 = "1l04h21nhyyimy6cydkailfwi1kwy3bw47g32cvzf44nijpz64hw";
    };
  }
)
