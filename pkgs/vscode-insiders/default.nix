{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1588663335";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/d4b8ec9da3bf1061a948fbb1b0d9d3db750cc79f/code-insider-1588663335.tar.gz";
        sha256 = "169vywlp7458xciwinhbyhsv887lbd9c2ws2pp0kiy5rvvcsh2i5";
      };
    }
  )
