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
    version = "1730353545";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/94cc631aca2379c2b44eb7fd8b729c1e221a904f/code-insider-x64-1730353545.tar.gz";
      sha256 = "08wsy57vfjhcyh0krag3s633sh84ql054s6x3pw76jklkk9sx2gw";
    };
  }
)
