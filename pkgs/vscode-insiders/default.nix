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
    version = "1619069446";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7ce1499d9541ba2acf66cd30a9054bd7818a8f80/code-insider-x64-1619069446.tar.gz";
      sha256 = "0fh6vk0729qqkp3pd5vd001avzqns3nyv1n4m7qn9sacq5d9721x";
    };
  }
)
