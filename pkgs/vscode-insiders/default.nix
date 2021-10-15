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
    version = "1634276450";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/34eeebdd66033633ac22efd5fab928ae37916168/code-insider-x64-1634276450.tar.gz";
      sha256 = "10v5ywc8fhm3jgkrll0py56j7lybpn3kiw3pvc2vicrgyw8qsyrr";
    };
  }
)
