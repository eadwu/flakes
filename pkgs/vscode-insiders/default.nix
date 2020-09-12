{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1599873150";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cca20eba8974b1d6b6a9b71bf4e60a29c8f26648/code-insider-x64-1599873150.tar.gz";
      sha256 = "15ind3dnrdx2610bg0ih144r0467zkf9a7b50xm4ygm3hk0k4d1l";
    };
  }
)
