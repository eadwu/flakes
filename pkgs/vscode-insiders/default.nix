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
    version = "1706780953";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/442c133fe92b5e2606c8242caae4e68938faccc7/code-insider-x64-1706780953.tar.gz";
      sha256 = "1rrk33wzi6j9ajb5l1ssnpa69mhxinbff23zfwpz7f1cdxsf82jj";
    };
  }
)
