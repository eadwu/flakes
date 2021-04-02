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
    version = "1617341191";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/550035808407c15252e581e8abe1b820b9d311ee/code-insider-x64-1617341191.tar.gz";
      sha256 = "0qpinpypcm86l7f8xxz5x2wa0w651f93sqvk0lqndp9vlkm2gzg8";
    };
  }
)
