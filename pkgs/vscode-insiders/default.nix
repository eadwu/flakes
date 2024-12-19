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
    version = "1734613280";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/225d1ca870a984369bde1a7fcd75f863fc69fee1/code-insider-x64-1734613280.tar.gz";
      sha256 = "0l8rh8i3ia9bl5f9j5fx5lgnv596p0w9cfxn5c868nmfzdgnfdzb";
    };
  }
)
