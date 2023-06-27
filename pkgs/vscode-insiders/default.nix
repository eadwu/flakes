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
    version = "1687880209";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/da7f05a70eb760e4ce1fe230ae158ae214433341/code-insider-x64-1687880209.tar.gz";
      sha256 = "1grc3rc821mhnnhjph45k4zjbilgrdpk2vnsi3fsj0blbn57k36y";
    };
  }
)
