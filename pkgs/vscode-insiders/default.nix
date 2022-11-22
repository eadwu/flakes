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
    version = "1669096233";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f730160c5d5fe36a7ad8db51f74f40a9d316e8b2/code-insider-x64-1669096233.tar.gz";
      sha256 = "02xhxx3h04k0kxknymmlfjap1jswh8k19vy18km4jbfwbd6vh8fa";
    };
  }
)
