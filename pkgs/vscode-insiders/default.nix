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
    version = "1610083630";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0949d5b794f4f42fb4dbc3d0edc1d33b8b70ab21/code-insider-x64-1610083630.tar.gz";
      sha256 = "1zbz06y5f6vdhbs3iglxqm58sgzwpy43rmh325ay4q8dz6kkjr4j";
    };
  }
)
