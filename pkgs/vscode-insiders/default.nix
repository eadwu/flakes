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
    version = "1660715183";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dd0ed9381aa5d0d43159463ccad1f7e060021580/code-insider-x64-1660715183.tar.gz";
      sha256 = "1ibmlr1q997q01nwrhgxd3q98rn6ba94381p11v0n3nvyzij745i";
    };
  }
)
