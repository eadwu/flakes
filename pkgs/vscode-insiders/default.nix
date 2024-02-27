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
    version = "1709030575";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/41e601871ac9e197b6a9245072994f6904addb60/code-insider-x64-1709030575.tar.gz";
      sha256 = "07mxqyz9599jnr2zs1l9rwkabzc8a3ca5vpap6vi9p34licnnidw";
    };
  }
)
