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
    version = "1720677095";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c37f4a49e28831cec1aec1af0f626edaada1f7ce/code-insider-x64-1720677095.tar.gz";
      sha256 = "1m7b0ylwqs43aq6mkpjx2m8hrjliw9fz551vjz4w6ncghcb5qgaa";
    };
  }
)
