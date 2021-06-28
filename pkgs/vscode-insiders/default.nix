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
    version = "1624858225";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bfac07cd0e374c433c2c06d6999dabf9cf9d5d29/code-insider-x64-1624858225.tar.gz";
      sha256 = "1fq8qqzyid60b0iii6qdnfrqmkzkyn11b9cmb1fz37xmvqgldb02";
    };
  }
)
