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
    version = "1746623177";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/19e0f9e681ecb8e5c09d8784acaa601316ca4571/code-insider-x64-1746623177.tar.gz";
      sha256 = "108m36z0zhghy5mhiiac0k1kz2ccrrggdm7l54m0w6l6hnwk5mpp";
    };
  }
)
