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
    version = "1676047397";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/c7930ca55d072608625ba76c13b5f9baaf9a2136/code-insider-x64-1676047397.tar.gz";
      sha256 = "09d8gags14p6ckbcf669rlby090019nqq6y55dp7xlrx3vbj0zx7";
    };
  }
)
