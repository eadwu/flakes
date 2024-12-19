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
    version = "1734587450";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/acd32b17b837b05a64275c297949753df46dbe6d/code-insider-x64-1734587450.tar.gz";
      sha256 = "03x0bn1m76d63wb88rwras2xymdmkq0ymh1b4b81bhlyp2097k8l";
    };
  }
)
