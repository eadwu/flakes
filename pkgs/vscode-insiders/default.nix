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
    version = "1612762232";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/afd102cbd2e17305a510701d7fd963ec2528e4ea/code-insider-x64-1612762232.tar.gz";
      sha256 = "1n9vh2qhgzxnid3qx7nwx0c3kzramycb57zk1nmfv38l727vrd3g";
    };
  }
)
