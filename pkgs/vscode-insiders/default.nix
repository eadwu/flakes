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
    version = "1707210872";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8839e62ada712a958e76e9c5cd62a41176c51501/code-insider-x64-1707210872.tar.gz";
      sha256 = "0s1k9q5yjb7f72hzkganyq8qz4wy2hw59x5kidhzypkj5jzv5myj";
    };
  }
)
