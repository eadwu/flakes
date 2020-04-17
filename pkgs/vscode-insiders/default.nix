{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587111748";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a3083e58e2a9e77f60e531acaa32e18527ae8439/code-insider-1587111748.tar.gz";
      sha256 = "1haz80gd5f9pbiigdcgq73ggdsg5if8v51yvn3f4r4lp3fy19kic";
    };
  }
)
