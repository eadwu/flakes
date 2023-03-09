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
    version = "1678341052";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/502ac5b213e373026527efdbcea4e669d930d9e1/code-insider-x64-1678341052.tar.gz";
      sha256 = "01i8v946b7afw7chqcshcphph5dpjh5f4d68vrlqhsvqv46mbnza";
    };
  }
)
