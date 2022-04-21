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
    version = "1650519715";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd95a8d4516d590256eefecfce465a2f10e8f5e5/code-insider-x64-1650519715.tar.gz";
      sha256 = "0s3azf9qf8j0fc28iamcqdfmvj8k4g9ab5v60bkx5vqgij8p3p3r";
    };

    postPatch = "";
  }
)
