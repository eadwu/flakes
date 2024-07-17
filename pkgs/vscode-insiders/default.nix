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
    version = "1721195484";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4a103b0eea7de96d12fc2cbada846ca7ef4f1298/code-insider-x64-1721195484.tar.gz";
      sha256 = "1dzvkqdgj54q1yagafqz55c022xdbagp83nkscprmh6nllbf3ab9";
    };
  }
)
