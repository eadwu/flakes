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
    version = "1689140001";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/48cd8e0c1b142a46f0956b593d8331145634658e/code-insider-x64-1689140001.tar.gz";
      sha256 = "0j2lva1iqarhxjii6lirn355ivfjhjlqz5d8vx47gxvxx9vk4adg";
    };
  }
)
