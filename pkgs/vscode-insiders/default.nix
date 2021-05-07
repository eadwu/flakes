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
    version = "1620376448";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6bee0f2f3fea9df1ad45344f09b2a139c93b384f/code-insider-x64-1620376448.tar.gz";
      sha256 = "0w6k2njibzln2bdpp5kscfmcbzwjn28cpxh2aw6rkvj7n2b84vja";
    };
  }
)
