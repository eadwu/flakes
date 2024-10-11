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
    version = "1728625643";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/74c8f936949bef8404989432129e720494a4489c/code-insider-x64-1728625643.tar.gz";
      sha256 = "1dbmbn90q9prbkj3ig62ya6gdzfanq6rb2jqx04zympk8bg3418h";
    };
  }
)
