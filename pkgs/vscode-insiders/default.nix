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
    version = "1701861306";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/af28b32d7e553898b2a91af498b1fb666fdebe0c/code-insider-x64-1701861306.tar.gz";
      sha256 = "0a6fyn3ykgbbljx2xva892n7kmc7ckgn7zhah25k24cd1ghrjlxl";
    };
  }
)
