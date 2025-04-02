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
    version = "1743620379";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b34f7ee5b19a94b2aa6982c48a9495f691a8d9f6/code-insider-x64-1743620379.tar.gz";
      sha256 = "0axjc30rp7wvbf8ybrij8k9z159gfyiq95081mwdqn3qwk9c8wkb";
    };
  }
)
