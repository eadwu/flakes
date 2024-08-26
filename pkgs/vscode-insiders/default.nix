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
    version = "1724690805";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e37706186d2105b4158df80574323ebb987d7f64/code-insider-x64-1724690805.tar.gz";
      sha256 = "1jyy28v3rngpwmdsbhr47cmv0320z48zdbbh22r1695ah86rgl25";
    };
  }
)
