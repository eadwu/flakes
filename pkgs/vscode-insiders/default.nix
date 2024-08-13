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
    version = "1723528335";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/922413f6d97e16c05b565398f33d95c306b1ceb7/code-insider-x64-1723528335.tar.gz";
      sha256 = "0szrp5d3gwqczprpklhz6rsmknba5g01mflrygc76kzzfi5yh91k";
    };
  }
)
