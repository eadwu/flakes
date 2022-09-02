{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1662097505";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c4722f1bb292284e0437eb7547808a5788fe6430/code-insider-x64-1662097505.tar.gz";
      sha256 = "082p3nkqb22i245sxcfnf9c4wjs42kgwdhjpww2k580sfsypdqpv";
    };
  }
)
