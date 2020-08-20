{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1597914250";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8e872f41d4ba7807e58938bbf861ca6a22d534aa/code-insider-1597914250.tar.gz";
      sha256 = "03sdcjn05px67ry14985bjx0vy20jn89n9ixyrz68il722jw5gvw";
    };
  }
)
