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
    version = "1666862133";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9ad069358e9f09d1f49a90db36b73c953505438a/code-insider-x64-1666862133.tar.gz";
      sha256 = "10a5hqpsbk2wcm661ghr0dix9gy6wi6ncafd6f8xjldpcm0i2pb8";
    };
  }
)
