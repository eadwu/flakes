{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1588754407";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/d69a79b73808559a91206d73d7717ff5f798f23c/code-insider-1588754407.tar.gz";
        sha256 = "071r7rlxma8xi3pcq6ij0m1zq4v9l4f7a433l60vsibx5q70lyrl";
      };
    }
  )
