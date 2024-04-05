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
    version = "1712296310";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d6eba9b861e3ab7d1935cff61c3943e319f5c830/code-insider-x64-1712296310.tar.gz";
      sha256 = "0s7i218lmllsyqb1r5aszaxi753zdb9wrjr8fwrls97gagmm098n";
    };
  }
)
