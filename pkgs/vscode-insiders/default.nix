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
    version = "1642398113";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6612ae0f8b5d9c0d86518ebbd153c724a7cbcf73/code-insider-x64-1642398113.tar.gz";
      sha256 = "1x1lz454vcb022h48rq5d74fw2m0b492i1apik0qb9k175p3f7k6";
    };

    postPatch = "";
  }
)
