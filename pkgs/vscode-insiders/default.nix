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
    version = "1644558238";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bb221a61d29deabd99ee9431736d04f2175cb596/code-insider-x64-1644558238.tar.gz";
      sha256 = "1cgwyk26l3lavcww0m1v95h0pa414c9f5y75vw9iazbfh06x9ddc";
    };

    postPatch = "";
  }
)
