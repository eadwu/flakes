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
    version = "1680501033";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2da5a0024fe2ca407f741f19340f1a10f4d692af/code-insider-x64-1680501033.tar.gz";
      sha256 = "10w3d68hnky0ymz4dx5gybjc7jm64g0vwlcla9b1vrxk1ahv5q4d";
    };
  }
)
