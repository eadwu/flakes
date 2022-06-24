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
    version = "1656053964";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/173f4bea73601a31859372b409cac2c20fa91194/code-insider-x64-1656053964.tar.gz";
      sha256 = "07b0agkjp9rkvm45jyhlfkin87ipk3dc6vnpr74l8grqjn18rwbx";
    };
  }
)
