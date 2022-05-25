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
    version = "1653457234";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d891b49fc0f8fc5e00591657ca225975952b09ca/code-insider-x64-1653457234.tar.gz";
      sha256 = "1zh4w8ridgps838423m49pxzn2j57nw16shy559n5571mp8vxk79";
    };

    postPatch = "";
  }
)
