{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1599198906";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/45c70c29e572de3e9ca24d993f0616fd31f05029/code-insider-1599198906.tar.gz";
      sha256 = "038vlh7h85nr7wylwam6457z3xm3af1bv36nzm4wga5dj9yqrdnl";
    };
  }
)
