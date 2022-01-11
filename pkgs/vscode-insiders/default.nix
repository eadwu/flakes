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
    version = "1641793700";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a06afb22ce06dbd4f01d3bb5bf946e08bff55180/code-insider-x64-1641793700.tar.gz";
      sha256 = "13ys8vgz8wvrlw52xa8hcrkpjdk0asyh7nk90kysgdwwg0ik5y6j";
    };

    postPatch = "";
  }
)
