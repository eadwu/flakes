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
    version = "1742210816";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5b778ceb0fd58f9cfebbf5ea071e4ebbae751401/code-insider-x64-1742210816.tar.gz";
      sha256 = "0jxkgnkbgz8z4rycwwbcgyjxgjd9qg0myw7lqk777nryvgsn6yyr";
    };
  }
)
