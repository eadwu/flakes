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
    version = "1645767789";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8440b8f47231147823ba9696913d642e5f2d9d58/code-insider-x64-1645767789.tar.gz";
      sha256 = "17s0fd1q0cpadqz0a9p2nh855ycc3dfa1ksi36vi0d0vn3g6r2kh";
    };

    postPatch = "";
  }
)
