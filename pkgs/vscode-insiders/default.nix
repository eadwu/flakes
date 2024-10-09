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
    version = "1728452861";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a016ec9b66ffdd3ff0f831768b8e75be008a54e4/code-insider-x64-1728452861.tar.gz";
      sha256 = "0cdij8mxxskzlfil3dp1zprl871sl4zhdwv8v3fqi14cc2qc69xn";
    };
  }
)
