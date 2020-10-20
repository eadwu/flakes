{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603173673";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/13b3c937dc5e3816c79bdd2cdf2cdf6f9c727b75/code-insider-x64-1603173673.tar.gz";
      sha256 = "0z69h4xyyz8v09kvvdnwp6zwi4zi74svhh6g4d6yi50ipd57z2m7";
    };
  }
)
