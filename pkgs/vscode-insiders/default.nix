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
    version = "1744176194";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/174af221c9ea2ccdb64abe4aab8e1a805e77beae/code-insider-x64-1744176194.tar.gz";
      sha256 = "1zirrdvsiczfv2367dz31zni7yby69y8mhh2z776jzymm9knbkw6";
    };
  }
)
