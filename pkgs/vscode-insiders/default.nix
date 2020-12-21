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
    version = "1608555268";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4a875e23d20b64504a818834f3fa4c40adb8d480/code-insider-x64-1608555268.tar.gz";
      sha256 = "0wxc4xif683bfdbr33f9camrq3kl24bx0jiagdpqmc99a2a4phji";
    };
  }
)
