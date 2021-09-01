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
    version = "1630494216";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e7d7e9a9348e6a8cc8c03f877d39cb72e5dfb1ff/code-insider-x64-1630494216.tar.gz";
      sha256 = "08zs68bwla8j30z4fdpd80cmp6isz9zjfa4dg32nq2f2yrl8k75g";
    };
  }
)
