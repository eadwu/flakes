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
    version = "1693546405";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/dd112ec0243c4b42bb3106e64df1688e242a6559/code-insider-x64-1693546405.tar.gz";
      sha256 = "0khahlp4h93fnzwz2hi1ns2hiry3nj3n59kwhnshy43b5c8k4qr7";
    };
  }
)
