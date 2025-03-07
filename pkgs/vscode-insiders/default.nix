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
    version = "1741325233";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2b3cb533550639a43a144968b07576998a880718/code-insider-x64-1741325233.tar.gz";
      sha256 = "0ihwn0xyv6dqnnr5jbb7dxrhrjgrhs0mgcckhpnr2vgn1zm7q4gj";
    };
  }
)
