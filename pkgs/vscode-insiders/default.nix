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
    version = "1680202348";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b1ad3f934ca87b76dac5cf3533fb172d1c30e6ba/code-insider-x64-1680202348.tar.gz";
      sha256 = "1q153dd8236nwmk7ddb5bsd5h1p3w4ynhrq5chzk4xpvn66wfd71";
    };
  }
)
