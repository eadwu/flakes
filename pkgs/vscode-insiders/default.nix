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
    version = "1742458144";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/90dde06fb64726923ebef8121bd63836529b7d8b/code-insider-x64-1742458144.tar.gz";
      sha256 = "0x51malkb8f1i7qws088dl5cb267rb1rkx91kzk919f35kbk6vfb";
    };
  }
)
