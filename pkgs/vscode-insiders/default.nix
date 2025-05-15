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
    version = "1747287038";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6947b69d47deef74e7066f6b18a40a9e2058c8d7/code-insider-x64-1747287038.tar.gz";
      sha256 = "0j5rqqzrjjhsi9dkl958fxkwhbz0y43lp1l3y7pdylpna0y4qgi4";
    };
  }
)
