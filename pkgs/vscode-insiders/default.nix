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
    version = "1744215292";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/33c84cc39d19c0a70698ee0eaa3bd453b79a5a8f/code-insider-x64-1744215292.tar.gz";
      sha256 = "1sqdqmqqjidfs62rrcbv5zgs1c573aj40xkydyqg4ddzkl84gz47";
    };
  }
)
