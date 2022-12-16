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
    version = "1671169828";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/edc432e920c3ec2c2af5e8a99b8e4b782633d298/code-insider-x64-1671169828.tar.gz";
      sha256 = "1c0b7rd1dbwlfbwkd82zbw8kcm24i5rjlkzz4p90jns3azyz1blb";
    };
  }
)
