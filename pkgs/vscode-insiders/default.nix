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
    version = "1666778376";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c3eebaead9d3bf1cb961b91fca1b8af31990d328/code-insider-x64-1666778376.tar.gz";
      sha256 = "02ir95z5n7bbc6bhfyzqyjcnky4xv4pylnqqyng5wslyp8lpfhnp";
    };
  }
)
