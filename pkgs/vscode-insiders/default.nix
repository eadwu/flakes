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
    version = "1619586588";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/13f1afffab09548c10ddb3bc5d5db52587876ad8/code-insider-x64-1619586588.tar.gz";
      sha256 = "0z472jx1b0bi9gzrv6yy0dwnlfafy1dmacs828bjn8w8abzkh85f";
    };
  }
)
