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
    version = "1632721071";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5991e3c4b97eca5568069bf3e0910ab693ad3549/code-insider-x64-1632721071.tar.gz";
      sha256 = "1nppj5ypzs07vqs2p1anlvadhyr9kgbqkd193lxwha34p1pfakq8";
    };
  }
)
