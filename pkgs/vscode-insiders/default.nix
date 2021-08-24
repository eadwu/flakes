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
    version = "1629798355";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f4db5eac35995ab23cb563a55a35425de80ff9ce/code-insider-x64-1629798355.tar.gz";
      sha256 = "1p1v4rg9f2y9vbaww8k9hm772r6nk3883ibvimff5hqvdvcgi3i8";
    };
  }
)
