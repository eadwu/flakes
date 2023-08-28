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
    version = "1693200950";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f7973f357e7c316a88e8817886f41a843021fe74/code-insider-x64-1693200950.tar.gz";
      sha256 = "12c3ngarz17rxsrs5vscayzr0gphlvqbmrfcx3dqg494ddcxjmgx";
    };
  }
)
