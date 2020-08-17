{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597663996";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/652a432f59f54733bf17b79c9f2b7a925971a53d/code-insider-1597663996.tar.gz";
      sha256 = "0zf4gx2jjk74fg7k5s3k2f892hyhspgj436nfrgxmh1a7bmb74c1";
    };
  }
)
