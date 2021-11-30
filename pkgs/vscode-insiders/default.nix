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
    version = "1638251077";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b9cf83f70bb6b4697b544a97c7056dfd28fccc5f/code-insider-x64-1638251077.tar.gz";
      sha256 = "0nijk5yxpdavd5l4qainx8byq7c94agrbphwzb7vcwp9g3xj5qp0";
    };

    postPatch = "";
  }
)
