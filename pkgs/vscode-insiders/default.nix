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
    version = "1605765540";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a36c68b9ec3d6a0aca9799d7a10be741a6658a51/code-insider-x64-1605765540.tar.gz";
      sha256 = "0izvkvgnczdkqpg5b4zjvmfvrhpxws5jqb792x1vbwg9wksvphnd";
    };
  }
)
