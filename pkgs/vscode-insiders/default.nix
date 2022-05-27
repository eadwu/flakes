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
    version = "1653630260";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6428d0fc7dae5801cdaf2d160ac39a3dfc8f0c06/code-insider-x64-1653630260.tar.gz";
      sha256 = "0m805yr0lljns6b794jq3jf73scr3spr8yfcaicjsz2di70b23z7";
    };

    postPatch = "";
  }
)
