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
    version = "1652247671";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8c882677f947ef7ec748e7f031c7b5470aaf9be1/code-insider-x64-1652247671.tar.gz";
      sha256 = "1ns6g5h2mbslakwhj38k9fw631pb7hfsgz00gyhd2vp92vykff1w";
    };

    postPatch = "";
  }
)
