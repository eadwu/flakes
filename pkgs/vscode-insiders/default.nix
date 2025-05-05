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
    version = "1746481357";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d04f3480d44a8bb55aeb9262bc70c70ae1df49e7/code-insider-x64-1746481357.tar.gz";
      sha256 = "0gs8by9a15md33mqawb5ysk9qfzsxygln2m7qlsf1v7pjnndw2c4";
    };
  }
)
