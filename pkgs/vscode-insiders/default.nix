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
    version = "1684530071";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6d3fedb7c2cf965915c785dc07701eb978947506/code-insider-x64-1684530071.tar.gz";
      sha256 = "0cm7g6xw36gwx8m72ck0mk22dx99ccbffwjlncrhn198292qdgki";
    };
  }
)
