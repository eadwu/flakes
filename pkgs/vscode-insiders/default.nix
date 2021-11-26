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
    version = "1637910341";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d18d093403b12a65350c58a7b0d5771cc1f42aba/code-insider-x64-1637910341.tar.gz";
      sha256 = "0qhyhlamg76n136jk4n39fmlzb60qv4nb6sc59drvn8ry9fs1f8x";
    };

    postPatch = "";
  }
)
