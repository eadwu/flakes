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
    version = "1700506403";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/da5ab29656a9f0bef63602fbce10968a7f4db2b5/code-insider-x64-1700506403.tar.gz";
      sha256 = "1q369vifpcmr36d5gcz2gjmk56nza172dkxj1qbsdq7aznxsamxy";
    };
  }
)
