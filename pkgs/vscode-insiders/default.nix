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
    version = "1657777483";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e0a65a97d4f349cf11a7cae804a5553ccb412528/code-insider-x64-1657777483.tar.gz";
      sha256 = "1axhbqmh576kskriq317mxqg5qjbzhpphbg2is0900c0yinb0ri4";
    };
  }
)
