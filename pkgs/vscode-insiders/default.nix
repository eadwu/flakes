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
    version = "1643711765";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/96e996a75c09e5947c151f8b978bdc9496b81aea/code-insider-x64-1643711765.tar.gz";
      sha256 = "159ghi084vfcg1bxvcv3j9i39ij361lgzhfj3yi8fvir1srfpy1q";
    };

    postPatch = "";
  }
)
