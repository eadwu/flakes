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
    version = "1692768797";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ad94cf18189746d2e942fda257950901049b3af3/code-insider-x64-1692768797.tar.gz";
      sha256 = "1ymkqhil8i7i0hja1bqy9b3zh0i41cpijipifdba17qazvwjfvdp";
    };
  }
)
