{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598602956";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bd2a40195f1c904a0cc0dd161371c0e3e3957052/code-insider-1598602956.tar.gz";
      sha256 = "12d6jnx1d4q9zmpj0j1d350lgzgrcy6kang6vfy1h339chfak3xl";
    };
  }
)
