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
    version = "1630697693";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/82a3d2645f00c5e9981db96f0cfb02d7cfe16fba/code-insider-x64-1630697693.tar.gz";
      sha256 = "15qv6xygaf52k2di9fz8wr2ydxqycqgam1asmc6yqcpkaaqjamrj";
    };
  }
)
