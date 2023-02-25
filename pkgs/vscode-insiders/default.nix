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
    version = "1677277530";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ead95b4a7014d12ddcb2dd6ddcb16e73f1e4cd67/code-insider-x64-1677277530.tar.gz";
      sha256 = "10ysaz2l3ixchjhyggjd0wjihnvhj32dppss43yci6kb23zfawfl";
    };
  }
)
