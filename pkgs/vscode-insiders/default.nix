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
    version = "1669960289";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/493a541735b84de36b628750ba716a430669cb7f/code-insider-x64-1669960289.tar.gz";
      sha256 = "168895smypw2bd9qcwhrms29g767cxf6qwylaf3gws0sx353z0r1";
    };
  }
)
