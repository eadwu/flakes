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
    version = "1655357853";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6f7c824a826ff0ccaf4de05d6fe0aac3be7bc136/code-insider-x64-1655357853.tar.gz";
      sha256 = "0q9lfk72fajiq1lrg9xbay2v8x531wwvw63cw248ag52prklcy2b";
    };
  }
)
