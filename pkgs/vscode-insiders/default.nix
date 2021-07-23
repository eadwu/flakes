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
    version = "1627069263";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/04485223ebc6a075f39966bf9b3e261359ac7818/code-insider-x64-1627069263.tar.gz";
      sha256 = "1hj91yz2licsz8gkb1qjxdf0j6syw0ki8lrxl139n8aihssqs7q8";
    };
  }
)
