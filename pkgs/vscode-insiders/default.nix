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
    version = "1690201767";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5e0c49cc9ece55017822d18720990be105412760/code-insider-x64-1690201767.tar.gz";
      sha256 = "0k0ng22nkgxzyrbc2lnddz719mrmdwdpidy2lzy10mgrgqnq98bx";
    };
  }
)
