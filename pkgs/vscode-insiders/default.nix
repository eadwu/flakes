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
    version = "1664527498";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bcb6c9b7e0e795bdf65ea440025d204060e4bfc8/code-insider-x64-1664527498.tar.gz";
      sha256 = "1rgsygjvshmzvbgwy5fm46gxsmq24yf93jiqva27mgfiicymcrn9";
    };
  }
)
