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
    version = "1698355313";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9ea20d5e2473f400e7eeaebf5b98def771155146/code-insider-x64-1698355313.tar.gz";
      sha256 = "1c0pn93szqywisp6mps90w562y099gir84jnfw5xdnsr56fsvkpd";
    };
  }
)
