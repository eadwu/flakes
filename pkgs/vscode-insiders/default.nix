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
    version = "1686722797";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bf5419f02d146b4359c32fa0748f8ba47adf118c/code-insider-x64-1686722797.tar.gz";
      sha256 = "159pa2dn9jgmjbbkrcyr90qlwrj73igz1gziqsbghan7pgajwi2q";
    };
  }
)
