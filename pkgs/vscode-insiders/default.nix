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
    version = "1644315199";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f8c36556a2c305327f5417dc7f93220f39ed608f/code-insider-x64-1644315199.tar.gz";
      sha256 = "049j2hynwpi9vha2ywigqbhzhl4f3jrbj8jjajcxb4ywg7y51qdg";
    };

    postPatch = "";
  }
)
