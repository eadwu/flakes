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
    version = "1654268755";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dad162f8f376537aacd2e6fab65a4ea28fe65176/code-insider-x64-1654268755.tar.gz";
      sha256 = "1znxrll73ka5vah15hvss98njm9n9fix1xg10xx7k0wb1d2n00ch";
    };

    postPatch = "https://az764295.vo.msecnd.net/insider/dad162f8f376537aacd2e6fab65a4ea28fe65176/code-insider-x64-1654268755.tar.gz";
  }
)
