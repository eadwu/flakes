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
    version = "1685598417";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c3867859cf3e1a73f3ddce5ad36b3791b7883d88/code-insider-x64-1685598417.tar.gz";
      sha256 = "0mbpzs4n158a384831gwlh6gvm2l9hjci4vcbp70qq8l272iww0c";
    };
  }
)
