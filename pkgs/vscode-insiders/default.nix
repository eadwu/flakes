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
    version = "1622742864";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a62df5d6c53e844bfdc50694f943c3f34b6ff50e/code-insider-x64-1622742864.tar.gz";
      sha256 = "1fhs5vflsc652mrj39bcgdpa1rf1l2g8065ja42akj2rcl7v7gbh";
    };
  }
)
