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
    version = "1748236978";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/87d1648dbf341e534dadb49b3c4e313f29ebd551/code-insider-x64-1748236978.tar.gz";
      sha256 = "02dfkqnwmi9v4zv4c8zqz6mp8jz4zzsndh9d370mzp9jif2qcxcd";
    };
  }
)
