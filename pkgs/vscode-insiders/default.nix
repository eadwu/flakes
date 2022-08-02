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
    version = "1659421009";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1259bfe0090ac90afbf5d53335c43761de6bb19f/code-insider-x64-1659421009.tar.gz";
      sha256 = "1cpkk7dj2n75dazwpwz68rhp0aiyd8yw9fm4lvqbsb6z2ifv8v01";
    };
  }
)
