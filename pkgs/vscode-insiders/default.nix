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
    version = "1712814666";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/903ce35c77c7b5714a2d9063b9f1d9bc2956d07c/code-insider-x64-1712814666.tar.gz";
      sha256 = "0lsjrphakzjsapl619w8fcajr6bic7d5azwg765vjbjkrk5y7hqh";
    };
  }
)
