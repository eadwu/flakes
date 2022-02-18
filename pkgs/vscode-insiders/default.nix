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
    version = "1645162743";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1d618b2df1cf08f0e3ab706353f0a8f6f1424795/code-insider-x64-1645162743.tar.gz";
      sha256 = "09rd8n6g3ykncki47j2d4m0qs9smx0ldjg51zzada3n0nvf7m21h";
    };

    postPatch = "";
  }
)
