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
    version = "1721951853";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/bcbdd8e575684d6df1def9a478d645c37129c033/code-insider-x64-1721951853.tar.gz";
      sha256 = "04mbyhmch57q7n0dkn3pnvhsw230f5vnya16qv9vngxjv92n4w5r";
    };
  }
)
