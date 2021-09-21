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
    version = "1632216202";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1b9403cd461c9c975bcb9e48d84ba9e4ea86559e/code-insider-x64-1632216202.tar.gz";
      sha256 = "0k1g5rk90h11h95rl89jh2swmq7wbzllizr06hddxk9mh8z587gz";
    };
  }
)
