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
    version = "1656054132";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d6497d3db17303db96044f5453141aa20bb3df6d/code-insider-x64-1656054132.tar.gz";
      sha256 = "02klcy1252hlk4304xb5rhqn7xjai4afv5pvyf7689id78mbp2sq";
    };
  }
)
