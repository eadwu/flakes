{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597685101";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/11dc5a81ba248cc2678888391f1b24dccabddaf8/code-insider-1597685101.tar.gz";
      sha256 = "0mw3r00pn1ck6pzwq7g9k0280rzpp4wqwq4zgrcdzzv8pk7dx26d";
    };
  }
)
