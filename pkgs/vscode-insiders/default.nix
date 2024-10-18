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
    version = "1729239221";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/c85acdad6b679973c79b01a38afa91448c705c1c/code-insider-x64-1729239221.tar.gz";
      sha256 = "0n1kgnrb60mchq67a9n2ic9x2n0cw1lcq1qq5hhqzxlcbhhhp6m0";
    };
  }
)
