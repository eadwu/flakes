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
    version = "1669846559";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/56d73a45e38259976188a982331c9fb5d156cd25/code-insider-x64-1669846559.tar.gz";
      sha256 = "16jk578kixsh2kkd8ipx3i8xyjc7vlhfi8cf2kjsyb03lgmpci27";
    };
  }
)
