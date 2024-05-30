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
    version = "1717101328";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fc4f1252d76747e22bf3ad3ecc331ac745093d88/code-insider-x64-1717101328.tar.gz";
      sha256 = "1h5g8jfr6sa9jm5n2idcg46jihkiay3glcknjgp9knxk8j4922br";
    };
  }
)
