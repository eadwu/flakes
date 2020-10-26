{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603714023";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/16f4a29aa0ac05d3cba222b1f347b7404626c680/code-insider-x64-1603714023.tar.gz";
      sha256 = "1hl1salxf6yrq7j7rkcmd242p35r3j3a1xcvd6z1zh3m4rck1grd";
    };
  }
)
