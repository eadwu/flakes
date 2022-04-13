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
    version = "1649828292";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e3f21a18e2727ac37c78159ba81f2c6ee4a982cc/code-insider-x64-1649828292.tar.gz";
      sha256 = "03wndinqn2licmxa9xr7xc0vyb2jy200brwi8y50bhk0bzgsncd6";
    };

    postPatch = "";
  }
)
