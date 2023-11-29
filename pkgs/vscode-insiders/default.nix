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
    version = "1701225250";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2e721b6ec731c22cd3c2853dbc7ad69deb447515/code-insider-x64-1701225250.tar.gz";
      sha256 = "0d8b7h5s567f2i1q4vcwq6ai30867qnys8ny4dh7sfl9kl0vlnq0";
    };
  }
)
