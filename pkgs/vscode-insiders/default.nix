{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602610357";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bc20f53838c75c0ec473b2a1afa7423cc5bcf7ab/code-insider-x64-1602610357.tar.gz";
      sha256 = "0njhdjjl40n5w2zwjqhqmjhminl1wz1va1am5gq2jhwypdr9vvma";
    };
  }
)
