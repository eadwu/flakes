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
    version = "1634535958";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/729d81623815a428160b93e930054a1a2a5403ef/code-insider-x64-1634535958.tar.gz";
      sha256 = "10k33hw96h9cjqbcldcq4vkzq2nxgb69d365l559mma92jn5hi71";
    };
  }
)
