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
    version = "1702272984";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/46a233646602c378c2168fa2a104dff8e8551558/code-insider-x64-1702272984.tar.gz";
      sha256 = "064zd5s06larbkrn533r8mp72av8l1qnms75ll97pc674q1zpq5l";
    };
  }
)
