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
    version = "1664343998";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/835d39cfac9ede6c7c90678c8d6c3d4d0171ed6d/code-insider-x64-1664343998.tar.gz";
      sha256 = "1q0yz6ia2nm1ix8npj232mkvj0hh6699i09d61fkwhsicq5g6r4j";
    };
  }
)
