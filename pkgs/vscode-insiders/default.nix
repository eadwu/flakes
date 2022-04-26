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
    version = "1650951508";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ab86e0229d6b4d0cb49cfd6747c92cafcd2bd4af/code-insider-x64-1650951508.tar.gz";
      sha256 = "1ihwp074a9naqyphfhb42vj55ch1d9y7csh6giz0rfy7780sg0yh";
    };

    postPatch = "";
  }
)
