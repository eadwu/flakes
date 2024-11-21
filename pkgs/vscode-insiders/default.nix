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
    version = "1732168136";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/69acde7458f428f0e6869de8915c9dd995cdda1a/code-insider-x64-1732168136.tar.gz";
      sha256 = "1r4z3zf3ks6bgqzdq087ji6rsgjz32c4hm8qzjdl2722jhi45r7r";
    };
  }
)
