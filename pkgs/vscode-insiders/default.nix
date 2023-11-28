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
    version = "1701156572";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/dcb066e3ae59baa89654ebca3b12aae7c35477a3/code-insider-x64-1701156572.tar.gz";
      sha256 = "0g2w1p1r7q6794xff5slcra6x6viialikj7581zhnrhx0bsdz1g4";
    };
  }
)
