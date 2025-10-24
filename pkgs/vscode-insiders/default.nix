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
    version = "1761345221";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a24e4c509a43ed2fed08fe6e65c9f26d89c81c75/code-insider-x64-1761345221.tar.gz";
      sha256 = "0kwxfa7nkjiykhyzb13jglmq9jvc618fq9vznlj6jibl38c5cdag";
    };
  }
)
