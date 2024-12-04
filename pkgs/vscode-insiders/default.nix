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
    version = "1733337351";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/eeb1c0ff4133032ab193aeac8e898e93dd22a380/code-insider-x64-1733337351.tar.gz";
      sha256 = "17r68bcg07vwsil8rxm9y1jxbckyw50bv3dy4wlw2cjlfl934m4y";
    };
  }
)
