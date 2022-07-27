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
    version = "1658900606";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9cf2fabdd600c7d8e3230803acb246405321e8dd/code-insider-x64-1658900606.tar.gz";
      sha256 = "0p9rikwis497kkdshw3vrlfdpz2040byc8d0c846f2072zwr4gki";
    };
  }
)
