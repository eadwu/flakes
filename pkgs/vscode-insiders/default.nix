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
    version = "1654303991";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2260d7cca34384a2838c728850afdd38113ddb47/code-insider-x64-1654303991.tar.gz";
      sha256 = "1klgbwqld6j6mydbr9cjx921ij2k8327q77yxfkab62l5w1jlpvv";
    };
  }
)
