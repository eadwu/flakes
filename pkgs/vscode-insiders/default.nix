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
    version = "1673848019";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8be8d96ab86ed4077df554eb62727484d454699f/code-insider-x64-1673848019.tar.gz";
      sha256 = "068qmcd3vgk6bdls0xlaqs4khlpn9fbci7asl1wcaqga5blc7gql";
    };
  }
)
