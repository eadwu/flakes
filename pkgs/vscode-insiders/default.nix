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
    version = "1618464695";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/25785b97e533b15ae3b12e48aaf4187416437e62/code-insider-x64-1618464695.tar.gz";
      sha256 = "0gzhjfr7k0ahjxabjj153nmaxf9sjgdg7xnjmh49x6ar9a40cgd4";
    };
  }
)
