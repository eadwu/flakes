{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1590472730";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8687508aa689b1f16d5f6ff317eb25bcf4544586/code-insider-1590472730.tar.gz";
      sha256 = "1231lsx053dzgjd0alxm5x2rndwy9r39cw51jdrypnhm5gviy33p";
    };
  }
)
