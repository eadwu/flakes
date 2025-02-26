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
    version = "1740547416";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b7d674d3f420c3ca862cf3a315d52317fe475b4f/code-insider-x64-1740547416.tar.gz";
      sha256 = "1nibip0f9lvic80l32nfzxzp09vn8rwlmqg1n679j8wwlq7yw5lq";
    };
  }
)
