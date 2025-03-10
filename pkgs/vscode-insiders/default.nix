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
    version = "1741623436";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3ea047c09e86b75b33ea8c84a351efd7d3899558/code-insider-x64-1741623436.tar.gz";
      sha256 = "1c380nwc8xacvpszq1wa5d05y6hdqynrnxwbzby5xx9xrcpvm7gl";
    };
  }
)
