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
    version = "1685700359";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/05ae089c791aa5c8ec05abd5687c9a31517579bc/code-insider-x64-1685700359.tar.gz";
      sha256 = "04k64x1q1l22813xd9y04wxa27c9jx5gnx0y2mbrpqsbyayzw2k3";
    };
  }
)
