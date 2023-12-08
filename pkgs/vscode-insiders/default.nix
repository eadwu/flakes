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
    version = "1701998654";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ab0520decb7284b2b2a9bbe3ababea57ac83c86b/code-insider-x64-1701998654.tar.gz";
      sha256 = "1l6ha3xkqn2ky26nv7f32gg739r95yizxgyj3dk30kwwwh5rna2f";
    };
  }
)
