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
    version = "1693566349";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f1302be1e67e3af5fbeb8bbb2ea784de7bc96150/code-insider-x64-1693566349.tar.gz";
      sha256 = "033vgm54c69mn4hppj4wadkfjabxzgibcg47kpmf2vn6aqchsylj";
    };
  }
)
