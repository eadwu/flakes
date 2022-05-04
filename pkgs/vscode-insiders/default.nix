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
    version = "1651667389";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/57fd6d0195bb9b9d1b49f6da5db789060795de47/code-insider-x64-1651667389.tar.gz";
      sha256 = "0cjhx4iipm6hsygvf15xiwy777wa6gnjwcdnryp3qr01jzpq8s72";
    };

    postPatch = "";
  }
)
