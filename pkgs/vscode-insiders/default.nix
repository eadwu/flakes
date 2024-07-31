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
    version = "1722432075";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3bb157866cdb10b90e5f5999e1d9855c294aa7c7/code-insider-x64-1722432075.tar.gz";
      sha256 = "128m5p62nsx4qazm5ih8i93c5ixmf62sbxqazk9frwjj3wld8zr8";
    };
  }
)
