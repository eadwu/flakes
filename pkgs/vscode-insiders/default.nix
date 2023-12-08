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
    version = "1702036466";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/02b90714767f05c734ac29a64d0e5b4768f532d8/code-insider-x64-1702036466.tar.gz";
      sha256 = "0v0gr0sjqqmsp9jnmnyz8l4aq0vwnfc0ppdafgyifcla9wvm84kb";
    };
  }
)
