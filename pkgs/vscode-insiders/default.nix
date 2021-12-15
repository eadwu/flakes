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
    version = "1639547304";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b823936907f86ded04a152a4af202d0fc8423522/code-insider-x64-1639547304.tar.gz";
      sha256 = "09j3n4wn1p8brb2v9ys3p441n5v1xn8scmnzybjvq5idlmprl395";
    };

    postPatch = "";
  }
)
