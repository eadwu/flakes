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
    version = "1643375804";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b8178e3e2f3f620ebdd31dfbfba937ff1b12ee04/code-insider-x64-1643375804.tar.gz";
      sha256 = "0xdjgd5mzy0aiyai37drk4ppvwl5cx19hfhz30bklky3z350v5l8";
    };

    postPatch = "";
  }
)
