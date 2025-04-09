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
    version = "1744154958";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0023cad23ae989f853796c66262b343ba202d7e7/code-insider-x64-1744154958.tar.gz";
      sha256 = "157x9ck3gycf7phwxngqikg90mhgkpdc1r5844sr57q6r58l9im7";
    };
  }
)
