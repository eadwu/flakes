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
    version = "1738282074";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/bc75335dd88c46836772bb8cdbe426f26a968493/code-insider-x64-1738282074.tar.gz";
      sha256 = "1h0kkivg72dym429iz5zx1kfq2ix595253wxzfpmm2hg686467y0";
    };
  }
)
