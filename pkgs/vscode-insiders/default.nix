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
    version = "1731649632";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/28f7008e9b2799e3004c48c26fff3d02ec8f13d8/code-insider-x64-1731649632.tar.gz";
      sha256 = "15qajjmwmif1jfldpwskdjr2w40q37bngr2z7bf96zykb7hbrnd3";
    };
  }
)
