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
    version = "1650260753";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e6d98a13fcd3bf928d0e755eaae873ac200a98bd/code-insider-x64-1650260753.tar.gz";
      sha256 = "00yqi3g21nq49v6pf61pyxzmw3lwrgpxp5p6v7mdyyswcs4kr8bz";
    };

    postPatch = "";
  }
)
