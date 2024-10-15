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
    version = "1728971262";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8d8f0cd9d4b25e89621ce897e82f2111eca6a278/code-insider-x64-1728971262.tar.gz";
      sha256 = "0icycbawwknm5kv9q904l8dfz4mjb8kzfpyvg3swg9bds3irvzzh";
    };
  }
)
