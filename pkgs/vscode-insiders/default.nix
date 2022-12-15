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
    version = "1671094901";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/44531ffc7b7477dbe82750040d8ed69bae2bb140/code-insider-x64-1671094901.tar.gz";
      sha256 = "0vkddqgby8a4f5y60an359fkv8ciw2rrrm0ap7ybnmcq67s33mgd";
    };
  }
)
