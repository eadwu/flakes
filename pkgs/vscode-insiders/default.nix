{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601531133";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/228973889bc0e352f7cd11cc14755893f8d81864/code-insider-x64-1601531133.tar.gz";
      sha256 = "12k39kb93hsk380iygsj24rfq9sixkagf1rjgw8h30jd9dx2n9iq";
    };
  }
)
