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
    version = "1630993237";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bb9491d9f2c65510226dcc920a6efbf6501d5943/code-insider-x64-1630993237.tar.gz";
      sha256 = "1mkxzf8vzak80b1pn0j0h67af3vkx97k837325jcrxlwnjzng2yd";
    };
  }
)
