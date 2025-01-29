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
    version = "1738160025";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d99174934eea1507e98714b203e8b93802f7dd2f/code-insider-x64-1738160025.tar.gz";
      sha256 = "1s87yhw3mi338wv3sgq0xd3w71f02jg6ywxvx0vi625w6fvn85wn";
    };
  }
)
