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
    version = "1625225577";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/062e6519f8973fede2ca736e80682bd19007460a/code-insider-x64-1625225577.tar.gz";
      sha256 = "1zdmxyl4zxl6ba7jrjy9f1m32hjrh0ylnk6mx2cq42h2csmxj33k";
    };
  }
)
