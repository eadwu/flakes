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
    version = "1728593786";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7e40fbc3ba82f7d855f4abf0f0f9c7fc2c384afc/code-insider-x64-1728593786.tar.gz";
      sha256 = "1r0p95gwzkpmsmhwfxinfsjg2irzz94f2yvrb4wm40ccv1wci7sw";
    };
  }
)
