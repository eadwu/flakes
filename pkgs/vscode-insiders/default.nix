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
    version = "1698298497";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/46982792873b62b7ad1099799f7f7f2c6eafde3f/code-insider-x64-1698298497.tar.gz";
      sha256 = "0mywgzp34dzz3c3xzx5m09w17qidv62y97rnggksbyq7wmx54d4b";
    };
  }
)
