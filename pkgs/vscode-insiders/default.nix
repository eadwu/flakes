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
    version = "1713506058";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/063d715c4504380317f9ca8eefc602d71e56adb5/code-insider-x64-1713506058.tar.gz";
      sha256 = "0n9k5vvgyyc4ias8hiv9w5a4rn3vrcrnpmqsk6fqhyvl48vpxjdi";
    };
  }
)
