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
    version = "1646981488";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6b7453421201c888b81eae5c04ec822a6423608f/code-insider-x64-1646981488.tar.gz";
      sha256 = "0szcc0ri23hqs74vwglcrpn7abmqkxlvxl4hm66yndg50s5ivwyy";
    };

    postPatch = "";
  }
)
