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
    version = "1695049705";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/10765021158cf51eaf6785361598e1668f53e06e/code-insider-x64-1695049705.tar.gz";
      sha256 = "0jy9zgq8qk92al29hy9i2zfbksfzv24fpnq8xxxskx0nn13kj3xh";
    };
  }
)
