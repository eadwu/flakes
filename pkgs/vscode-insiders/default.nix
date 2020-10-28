{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603864704";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bb16786cff3d231facbdcee90741ac25fcffd3ac/code-insider-x64-1603864704.tar.gz";
      sha256 = "0c448fs2rb258mhhdpsfj9ilxhjwrdbvyi5s7l5k7hrg9fjh1dmh";
    };
  }
)
