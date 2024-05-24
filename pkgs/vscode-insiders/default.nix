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
    version = "1716529668";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e82e806f172f30aecb0e6bb04c01f37780c16f22/code-insider-x64-1716529668.tar.gz";
      sha256 = "1x51ckgfqa80jl3q30krk0q9pzlm12r8zkim65bg52njqdh4f12x";
    };
  }
)
