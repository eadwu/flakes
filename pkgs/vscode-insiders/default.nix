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
    version = "1615786158";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/84fe402d655e029eb1a5c04e675bf64788fa7fcf/code-insider-x64-1615786158.tar.gz";
      sha256 = "1a2gpc975gghw153zvcc6frbinpi2nmbnm3bf26jvr2jsfhrwqs9";
    };
  }
)
