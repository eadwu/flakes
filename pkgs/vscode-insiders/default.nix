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
    version = "1715603925";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3028408922e78cc9ca15ee761372a7c0603fa375/code-insider-x64-1715603925.tar.gz";
      sha256 = "14w4knbhndv2jix3ak1wfb8vl2n19ynxn6qig7bsz7gya5d8j2wp";
    };
  }
)
