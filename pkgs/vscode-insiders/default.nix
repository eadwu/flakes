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
    version = "1616477364";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a6f6b4aa8e3a688d9a5cbcd5df14af511ce2bd8e/code-insider-x64-1616477364.tar.gz";
      sha256 = "1dzq42l7h8bq05yq0z5r67b85a7vdnm888fsr83rvzcq3hr8a9hr";
    };
  }
)
