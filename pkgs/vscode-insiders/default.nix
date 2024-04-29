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
    version = "1714408070";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/dbfe999c960339dcd8134196c0a180b562b7b17b/code-insider-x64-1714408070.tar.gz";
      sha256 = "1av5vdd8bi9b0gsnba9ilxcvp00g707qhn0halkz548pyg6f5dpl";
    };
  }
)
