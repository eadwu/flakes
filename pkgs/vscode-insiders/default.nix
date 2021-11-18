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
    version = "1637213953";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bedf867b5b02c1c800fbaf4d6ce09cefbafa1592/code-insider-x64-1637213953.tar.gz";
      sha256 = "16fr48g6i205pgl8kayvk46kpid0p1alalzfgx40apsrrkxvjcld";
    };
  }
)
