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
    version = "1644463543";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1aa9684ba81ae56b340981411a3deaf19544bafa/code-insider-x64-1644463543.tar.gz";
      sha256 = "09f45wncwlikr4f057x2lzb6kdqaw4qwbl6jjanyg8h6w7cca0r0";
    };

    postPatch = "";
  }
)
