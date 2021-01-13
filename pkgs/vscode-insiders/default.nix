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
    version = "1610531529";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9bfa4c1d55892571b5936599fd628a5bfb9ac1db/code-insider-x64-1610531529.tar.gz";
      sha256 = "0lcyxwir3j67n1vgzqk3rnrqgxghqzrcwrlaqzq17hqfl3afs53k";
    };
  }
)
