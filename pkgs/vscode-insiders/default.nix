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
    version = "1701394705";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/621d89f2ef4b7715f681384739820cf08dfeeecd/code-insider-x64-1701394705.tar.gz";
      sha256 = "059w2vq3cfqpnv7vp3y3fdrbsv3y5anin66y71mgmwxjhiagv5ax";
    };
  }
)
