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
    version = "1677586939";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/92da9481c0904c6adfe372c12da3b7748d74bdcb/code-insider-x64-1677586939.tar.gz";
      sha256 = "0ykyalhq87rr4kw1j7mrkj087cgyz8rp1hs0f1lz67birdmbx4nw";
    };
  }
)
