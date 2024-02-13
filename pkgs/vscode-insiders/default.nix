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
    version = "1707803226";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b2598b92d18ea1132e9cd35df776c8c22a7f9730/code-insider-x64-1707803226.tar.gz";
      sha256 = "0l8d88gwcz7nsskm7k0x8vhrds72wh4j0v6pgbnsskggr5xi7f4w";
    };
  }
)
