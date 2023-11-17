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
    version = "1700218172";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/54b8f6a80aaad7489b75e9293b8d7a1700bed815/code-insider-x64-1700218172.tar.gz";
      sha256 = "1kb8z3rbmbxqx3z8fpzk8p5v87xjn0v18sdgw3ywabvbwgxp24m8";
    };
  }
)
