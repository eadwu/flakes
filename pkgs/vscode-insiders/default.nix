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
    version = "1620741513";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/988902e0bc37c7acba82e2ddde49592d8cb11666/code-insider-x64-1620741513.tar.gz";
      sha256 = "0c60wb14lizgzyrrqya71a1zfgx0bgrkqfnsady1c3mqnfs8gfln";
    };
  }
)
