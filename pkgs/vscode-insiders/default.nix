{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602655003";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2ed16d0ce8713a5dfed9729071141be0ccf7fbec/code-insider-x64-1602655003.tar.gz";
      sha256 = "18ag06agmws14rq0w0nzlgzx2l5llgvzhkm6fk2zd54wsp5cp7pz";
    };
  }
)
