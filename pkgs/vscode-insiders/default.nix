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
    version = "1613367161";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a699ffaee62010c4634d301da2bbdb7646b8d1da/code-insider-x64-1613367161.tar.gz";
      sha256 = "0h1gz2p2l4yhg9s4d2mixsaq2z4z9w74j7vl9ggmi7sbir3wbn00";
    };
  }
)
