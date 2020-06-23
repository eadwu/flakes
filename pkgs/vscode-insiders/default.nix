{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1592906035";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0913b1aa43191d8af0ccb4a133d9a8d7c1a81d69/code-insider-1592906035.tar.gz";
      sha256 = "13djf4d8rbl6ikc86l69vvl4jly93fqwdrhnl5kdfaxm6hai1m85";
    };
  }
)
