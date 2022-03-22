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
    version = "1647935729";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b0966eddca8cc86d3051213b6bf8327ef67ecf6d/code-insider-x64-1647935729.tar.gz";
      sha256 = "15c4mmzfrbq596vaj83p1bf0k147siqnjydf3aa86218md5cn64j";
    };

    postPatch = "";
  }
)
