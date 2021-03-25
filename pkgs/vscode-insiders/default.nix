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
    version = "1616650106";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/05ce54df77c242b1b8ea5fd93d720c62fdb183e6/code-insider-x64-1616650106.tar.gz";
      sha256 = "1ngp8cl6cvgzvi4cz4iy6md927wdh16syvd40950bwqf5wj3l1jf";
    };
  }
)
