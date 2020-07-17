{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594993029";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ff6b1c5984a4c2116a06318f07e871a4169fdb1b/code-insider-1594993029.tar.gz";
      sha256 = "0zhg7gnja1g07lcif09ilg09h0ykasmm8b3m1mqvxf9277cfmgmk";
    };
  }
)
