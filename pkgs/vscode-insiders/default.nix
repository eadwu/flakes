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
    version = "1743198452";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/99c9c6c8eb0aef3fce659b0fac1ff3130c4e34a4/code-insider-x64-1743198452.tar.gz";
      sha256 = "0n2a3m60r4gq19vrcsqqdrzpzrfggny6b8vj7rh4657ap6n7wgd0";
    };
  }
)
