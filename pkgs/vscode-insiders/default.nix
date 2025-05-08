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
    version = "1746724784";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/37506e76e36a8bd532389019b109e6d5c8954e31/code-insider-x64-1746724784.tar.gz";
      sha256 = "1ijwd3zm98xr09wybdh43wilxackz3i481wza88xhbl6ynlxb51l";
    };
  }
)
