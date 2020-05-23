{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1590182860";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2591ede95a52400d5d22989b16706f9b8b4831da/code-insider-1590182860.tar.gz";
      sha256 = "11hi72qyq4qb94sa0yv36pdq8d64l7raxl1anyv21vwl4bpwpsli";
    };
  }
)
