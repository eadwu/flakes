{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1590695235";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9e439b13d5784538333bee044ca1d1a992bc1c90/code-insider-1590695235.tar.gz";
      sha256 = "02bsacykx967r49fwz98g8yd0f8bc0kwiml1d2p3pna1xpb1hsdy";
    };
  }
)
