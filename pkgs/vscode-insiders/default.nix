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
    version = "1691127301";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/83fc3ad9bd553869e8fea3d370d1d2bd438f9e54/code-insider-x64-1691127301.tar.gz";
      sha256 = "13rbbn632h3xvzd3jsiaxls3xkncfz1lah0fl5za3n4w4c2qynzr";
    };
  }
)
