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
    version = "1718084946";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/21decd9342dd2e14f2a7cd2883f84e6ff43ea0df/code-insider-x64-1718084946.tar.gz";
      sha256 = "04bjkbj0gvgrf45ncx1mzl4rznm8l0wvj4n79rjxyfw8ar9cx89a";
    };
  }
)
