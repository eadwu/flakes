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
    version = "1679090219";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2a6bd78f745d3e6330c8ff7db5282dc582e117fd/code-insider-x64-1679090219.tar.gz";
      sha256 = "1gi6k8v8la1g0r1gr9063sxkj534qamlyqrajb8bh9vsinkibnxn";
    };
  }
)
