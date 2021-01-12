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
    version = "1610434325";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6dc779565e1e4a26104002fde340b68c157c3bc5/code-insider-x64-1610434325.tar.gz";
      sha256 = "1r6m57szhfqvprlxmlkfr1nkwkhnhww22i4m35q8fc81nldgrcf5";
    };
  }
)
