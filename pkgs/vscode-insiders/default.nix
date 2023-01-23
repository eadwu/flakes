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
    version = "1674476273";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/f1b09237cd400d92987cf7a9681995e8011ef54c/code-insider-x64-1674476273.tar.gz";
      sha256 = "1ls8pbw5ld7ad5726g3y16az3d1d2dpcn0hmvkds2vvfxxgvwv88";
    };
  }
)
