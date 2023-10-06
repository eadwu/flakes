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
    version = "1696570531";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/df7d3d054020b0775fc2445c25ada7450c508524/code-insider-x64-1696570531.tar.gz";
      sha256 = "164fwf6l4wjzdrd9m2jdlasan47z13cmz93lvqjjb50h740s3kv3";
    };
  }
)
