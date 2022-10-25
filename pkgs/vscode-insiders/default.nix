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
    version = "1666676976";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a803dc359aa1ed48c7acf074dd81d6af1525c8c8/code-insider-x64-1666676976.tar.gz";
      sha256 = "0kvd9yzzjsx7dmksrccgy8z2idnbdi8vlb36igc9f667pir03jgf";
    };
  }
)
