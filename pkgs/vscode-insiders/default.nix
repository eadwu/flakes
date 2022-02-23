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
    version = "1645594932";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/32456dc9e7d3194a94dd3ee0322ccf47e461d09c/code-insider-x64-1645594932.tar.gz";
      sha256 = "02m31qpfz3px0lxbm54zp53yayfi7yyhpa6ibs3js4dg5ik3xca2";
    };

    postPatch = "";
  }
)
