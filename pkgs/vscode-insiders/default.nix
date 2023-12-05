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
    version = "1701728674";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4ded39cfd580476a8f97303ce24848a7710b3427/code-insider-x64-1701728674.tar.gz";
      sha256 = "122xxxnbh9pf24scnn1wkilnphq6hkmh84cl1vhngfvcxszvxk71";
    };
  }
)
