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
    version = "1616564030";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2b66dfe0218cc18333ba92429218b33802b186bc/code-insider-x64-1616564030.tar.gz";
      sha256 = "1rz8flsyng241m9p3i559fajmsk3ad87d629963if4mvvki1vzqz";
    };
  }
)
