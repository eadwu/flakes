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
    version = "1635842542";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4bbec283c36a51cf80f9b77c7a81c140a76a363b/code-insider-x64-1635842542.tar.gz";
      sha256 = "1q9ci58af6wd7pgvjpl32zn285ngsydmfkp9gdnxmahqgvravjvm";
    };
  }
)
