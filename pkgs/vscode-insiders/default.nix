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
    version = "1700717804";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ef71b038ad2518e32514b6cc3a4df9f94c096e65/code-insider-x64-1700717804.tar.gz";
      sha256 = "1r0k6mfiv9azjy3nhwqb9iqp602p3xvrm4737nyb8l66pwjafqyr";
    };
  }
)
