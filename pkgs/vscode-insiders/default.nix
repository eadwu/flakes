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
    version = "1657047632";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/92d25e35d9bf1a6b16f7d0758f25d48ace11e5b9/code-insider-x64-1657047632.tar.gz";
      sha256 = "05pncq1zrixq2x25gjqndmjl93l7s13p2qhvpfyag3i4vl4023g4";
    };
  }
)
