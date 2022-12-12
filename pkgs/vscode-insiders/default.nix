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
    version = "1670824183";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/250a8f36c93721830b0ef2e39dc065d6944d9912/code-insider-x64-1670824183.tar.gz";
      sha256 = "0dqhqa40yd9g4lj42msj8phv8s2p424qg2pm693mxh128ysk3vr1";
    };
  }
)
