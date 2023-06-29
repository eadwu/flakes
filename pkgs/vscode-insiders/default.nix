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
    version = "1688026170";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c1bca6d7cc2c5f71ae04deda90c0cf50819ffde4/code-insider-x64-1688026170.tar.gz";
      sha256 = "0l4k9mhg9b5zk7aih8ywjsqm1yfma7kydxaciwg3jzqdx44sn80n";
    };
  }
)
