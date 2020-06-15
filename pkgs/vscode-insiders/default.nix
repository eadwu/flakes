{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1592200053";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0288447572790f983c350905bd1fc5b754970a0a/code-insider-1592200053.tar.gz";
      sha256 = "11s20p2an2viwy97jywq2c1swgyf3a1s1xibbhxzbmmsxbg43dr8";
    };
  }
)
