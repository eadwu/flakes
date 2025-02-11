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
    version = "1739281902";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/b1bce46d27c96db4ad9e1a7968606118feff9abb/code-insider-x64-1739281902.tar.gz";
      sha256 = "0xhw5dyyz42li0dkfwwgv8k331m20p9jdxq86ya3azhgiggcbvh9";
    };
  }
)
