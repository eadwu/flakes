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
    version = "1673468872";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/12515569ae440cf7ccc02d4649a25f2c77909557/code-insider-x64-1673468872.tar.gz";
      sha256 = "1c7kypfz23x44hc1bpyklkccfv6b2r6nzjp3vv2qf0pqjiwia6vy";
    };
  }
)
