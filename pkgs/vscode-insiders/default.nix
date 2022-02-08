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
    version = "1644298958";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0283cec6ec2c2d5ec39006a1048b8dc3ea8bc955/code-insider-x64-1644298958.tar.gz";
      sha256 = "0np9frrhl635snj1qdppnwh08m89mxpsbirj0m2wvpjczwg3a77k";
    };

    postPatch = "";
  }
)
