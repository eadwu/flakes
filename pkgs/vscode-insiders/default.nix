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
    version = "1614078105";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9ecd3fc3022e8c154aff868f74bd5d77f7d4a2ea/code-insider-x64-1614078105.tar.gz";
      sha256 = "1qn84qc1cvprrhhgpaj7nkrsixs11k9n9xvkljai6x9plq2w91my";
    };
  }
)
