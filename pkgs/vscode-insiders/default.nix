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
    version = "1673503160";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6d40104789d03d41b8866a1e57847dae14c5cf0d/code-insider-x64-1673503160.tar.gz";
      sha256 = "1xbcdapw4ra0kbsjwipyrkg0b4s6fqsgz0p3svlbw0983kwwg8fl";
    };
  }
)
