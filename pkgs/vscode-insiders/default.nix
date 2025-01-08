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
    version = "1736315585";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9b0b13d9bfe21c3dfd227bfaa8ed5693e309a2e0/code-insider-x64-1736315585.tar.gz";
      sha256 = "136va4g2cm8cnq8mdvxdcpspfpq0nsrk5md5dcnnms07jyki44sq";
    };
  }
)
