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
    version = "1609824962";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a48ef56fbf7767f55a193d7d5687addd1fc9239c/code-insider-x64-1609824962.tar.gz";
      sha256 = "0jdkd49j8pvxy5ng96vqvqk6x0s8bskr7z1da51ym06cj5dbn4f1";
    };
  }
)
