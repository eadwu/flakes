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
    version = "1683627176";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a7133ae9e21e01ed204b02e17e8fc3e91dcadae7/code-insider-x64-1683627176.tar.gz";
      sha256 = "1pm0arj7flbg6961hcfxvivjfi7azqgglmra94ly6liiy47ngkyi";
    };
  }
)
