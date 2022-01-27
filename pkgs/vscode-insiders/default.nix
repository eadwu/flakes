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
    version = "1643262181";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3dda6ea7acb66ea8693032fe9631ccac629da770/code-insider-x64-1643262181.tar.gz";
      sha256 = "1nadj0nh4d01g527dc5khnjdw43kzpz9h24f7m0d0s7v57phv88x";
    };

    postPatch = "";
  }
)
