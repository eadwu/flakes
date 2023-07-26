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
    version = "1690349669";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/862fa13002d8018c328931ee1edccfd4ca76447d/code-insider-x64-1690349669.tar.gz";
      sha256 = "15rbvvccfpxkbll7jx9an9lyp2lwx8a4w4xdg2ih1jgwy1n5ik3z";
    };
  }
)
