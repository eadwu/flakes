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
    version = "1679685959";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b9226e1ccc11625bcb42b55efb795e07ee533bb0/code-insider-x64-1679685959.tar.gz";
      sha256 = "19prh38dz3p2rrdi8m8ip06iyzvb9f45264yjlxpgin86ygqmaqn";
    };
  }
)
