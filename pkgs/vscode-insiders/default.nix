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
    version = "1761113441";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/55505bf0b5b7abbe820137bf8e01bed9b72675cf/code-insider-x64-1761113441.tar.gz";
      sha256 = "19wl8rdqgafznqs8w0qbklw3clyxilqc6cfldbsxv52dmcgcggam";
    };
  }
)
