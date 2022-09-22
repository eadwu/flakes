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
    version = "1663832896";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ba515cdbb48470c116884deb6de17981d341ec06/code-insider-x64-1663832896.tar.gz";
      sha256 = "0zcsjd3blx3b4m4dzb3hdawa3x5mv0j06f6k6dgk77c5myfkigic";
    };
  }
)
