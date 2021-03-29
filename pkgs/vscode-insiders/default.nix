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
    version = "1617053468";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4c2a1fa6306c17d0f1affb6759d22fc87f2b6b99/code-insider-x64-1617053468.tar.gz";
      sha256 = "0plh6rrzlsxb7awbsyjz2l3xbqx7ppkbccy8xwpa93wzayzi6yxc";
    };
  }
)
