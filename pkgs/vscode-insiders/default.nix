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
    version = "1721713921";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/22e3447b4b410dcf8426bf70743c5dd4030d6122/code-insider-x64-1721713921.tar.gz";
      sha256 = "0425f320wk3fvxrjbgnrkdx34xkvi98iclb3h58nzx9gmhlfjs2v";
    };
  }
)
