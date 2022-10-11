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
    version = "1665470512";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f4c58486f4a33b8c61f30a244374ef0d27dc19c3/code-insider-x64-1665470512.tar.gz";
      sha256 = "18r99v7pbjy1gj69hds4va4dw0znh864jh4j6xhzm7g164nspar6";
    };
  }
)
