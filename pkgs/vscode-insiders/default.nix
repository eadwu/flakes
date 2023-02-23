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
    version = "1677131286";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/d0acdbff1f30eac7cc68930013485276d1bae0ec/code-insider-x64-1677131286.tar.gz";
      sha256 = "1b21287cqb43ivg60w2kfjzyysbai8i20ncblyp9zpbvha3qlj40";
    };
  }
)
