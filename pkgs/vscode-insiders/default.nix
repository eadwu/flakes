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
    version = "1650865263";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6f26fa19db7e4cd2af57f52fd7009e715c3d7aab/code-insider-x64-1650865263.tar.gz";
      sha256 = "0qij7km02dkrvxbpvn0fyg3h93p5smbgbhhv5z0v01sql6kqzgyg";
    };

    postPatch = "";
  }
)
