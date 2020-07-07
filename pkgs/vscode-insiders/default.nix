{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594108795";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e95f9e63380a139cb1cbe54bacfc6703b96e30b9/code-insider-1594108795.tar.gz";
      sha256 = "1x9n0pkabn7l1rjywjvsc1j49szh8bfv1p9kl9a1l18v294mbadk";
    };
  }
)
