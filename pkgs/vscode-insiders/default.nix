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
    version = "1658987099";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b4d5b4ed69af953901051b1f049851b9dca3563e/code-insider-x64-1658987099.tar.gz";
      sha256 = "1irzlym13qp05bhpm0r5g96rca981a81xxw94ddwjajsdwakibam";
    };
  }
)
