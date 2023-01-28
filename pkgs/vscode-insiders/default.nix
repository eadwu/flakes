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
    version = "1674859825";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/b229eb5fa2ecadb8a5238ccb9f6f49f7ccba9d2b/code-insider-x64-1674859825.tar.gz";
      sha256 = "1ny2lq61ypj95hcff0g8g8lcjm5js1ncbkhx1rqwqsdwpr1gkn01";
    };
  }
)
