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
    version = "1661253969";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e3043ebbc6f73fe66beb80ce6312818ae0e66798/code-insider-x64-1661253969.tar.gz";
      sha256 = "0xq0dixswxysapsxbgnycppwvwcbdvvaajr1jd9sx0w5qpzllg1q";
    };
  }
)
