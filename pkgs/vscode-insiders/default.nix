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
    version = "1652938748";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ba2dd825803b5f95d5dcce927afc3a4882ed0f84/code-insider-x64-1652938748.tar.gz";
      sha256 = "0fgr3hynj6dngdavjl9yirvn28jg061xzfq50y5z2sdwqrfg4rd8";
    };

    postPatch = "";
  }
)
