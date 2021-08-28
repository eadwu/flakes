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
    version = "1630100826";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8dbad73de575e47e127c8b1a4324f2b61257fbdc/code-insider-x64-1630100826.tar.gz";
      sha256 = "1kf72hg90pam6wp7h0vsgqmv7f2aiivgmmchg3h5wc3yz16lxhah";
    };
  }
)
