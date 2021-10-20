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
    version = "1634710233";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2ae9352ae33ced58772683b60d961c604c9576ff/code-insider-x64-1634710233.tar.gz";
      sha256 = "1w79j791aszxq41z198rvcn52frb1shn1yjblm07w6j97rj3670i";
    };
  }
)
