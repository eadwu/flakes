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
    version = "1663047909";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1a55beb2aaee64eb8d0cbe5b61b10088bbc6c895/code-insider-x64-1663047909.tar.gz";
      sha256 = "1jk0qb11z3zsl1xfxfkdnvfwh79xb55xvpx93msv55790wgyx868";
    };
  }
)
