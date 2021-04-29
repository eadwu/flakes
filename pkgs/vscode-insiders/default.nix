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
    version = "1619673986";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0123d26aaa393bccf99f31f1eac07df6c9e218ce/code-insider-x64-1619673986.tar.gz";
      sha256 = "00qsn0rr4q5r6vbk1x39ci62n5pw5q7r2zh02za8hgipwjn3afhn";
    };
  }
)
