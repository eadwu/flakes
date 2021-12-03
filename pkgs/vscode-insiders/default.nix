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
    version = "1638509982";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cca3e817a2608225d4ae8715308195c91f765bad/code-insider-x64-1638509982.tar.gz";
      sha256 = "0qaass6zhcfih5hgjxr5ny1766p0b2mm0nmvffzg1hnl8nam5rzv";
    };

    postPatch = "";
  }
)
