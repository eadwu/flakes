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
    version = "1653975650";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/acb156d6fb0dc451f427748d5f68774f17cc96fd/code-insider-x64-1653975650.tar.gz";
      sha256 = "0jm0gci8dqcsnk8najzm3ljynn2sm67g9jxnnbqrxk42bi28zslj";
    };

    postPatch = "";
  }
)
