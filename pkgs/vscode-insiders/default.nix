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
    version = "1687413358";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e8b22318bfab2e52d5dbceee767e8b4bfe9b5300/code-insider-x64-1687413358.tar.gz";
      sha256 = "0p052dbb25fzr5qbwl6946bd2a5mnrwaa4nf3jzi389msjbxgp9q";
    };
  }
)
