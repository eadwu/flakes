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
    version = "1666175243";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9d3fbb3d9a50055be0a8c6d721625d02c9de492d/code-insider-x64-1666175243.tar.gz";
      sha256 = "1yzmxy10l5ij5d7m0c7qrzpjlki80v6idklbm6mx7v76k47p5ry5";
    };
  }
)
