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
    version = "1701687340";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8610f916a494fbb251b75ed6481059fa37b3f35c/code-insider-x64-1701687340.tar.gz";
      sha256 = "0lqz86l67s7a3hq5ifin4zjngdjw9rv24qgkaainvhx6043cwz2l";
    };
  }
)
