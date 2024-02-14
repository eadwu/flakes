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
    version = "1707889603";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4f2ff19ecacffa0aa4874db4d63ed4e899d98431/code-insider-x64-1707889603.tar.gz";
      sha256 = "0kgar549fs5bgiyp67vhqf5d9waxjjj5955w90i5h7jph7c8nxs6";
    };
  }
)
