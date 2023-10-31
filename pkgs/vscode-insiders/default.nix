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
    version = "1698709317";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/60182c7e1a666961ded4d0319c154f52d85daf30/code-insider-x64-1698709317.tar.gz";
      sha256 = "097sl67hzzk1p60fw49jxg1chqxzxjpbmlkhdd008bl7c7mfmyzv";
    };
  }
)
