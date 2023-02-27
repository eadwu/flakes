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
    version = "1677515982";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3c8099c659099d3af89a66f9635b4700a887f177/code-insider-x64-1677515982.tar.gz";
      sha256 = "1pjrxrqkdvf4sb828nklj147yj2p5aba33maipwri0ngji5y2clz";
    };
  }
)
