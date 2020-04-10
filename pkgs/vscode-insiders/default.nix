{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586424811";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2225d77536d12fea2eda04930f431a5eb0930bba/code-insider-1586424811.tar.gz";
      sha256 = "1d5qniggxg7bgp233h2vkxla2plyxdmaxp2xdcs5bv8h572w4yfr";
    };
  }
)
