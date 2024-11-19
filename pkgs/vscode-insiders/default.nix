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
    version = "1731995251";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/91bf2f3b96a337c05fdd30dbfe609ae780b74706/code-insider-x64-1731995251.tar.gz";
      sha256 = "0kgb3nldcy0v86a6ms5f4k09xlw04dwzi92pjrx161p6n32vr8lm";
    };
  }
)
