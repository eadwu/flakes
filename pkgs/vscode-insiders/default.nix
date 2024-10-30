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
    version = "1730267197";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3551cb01fa6f3a838e2d160df704cc3debfb9896/code-insider-x64-1730267197.tar.gz";
      sha256 = "0drdcwvrrzfj51b2hdsys6ivk06bli4nq490yyv4acx4lkag7ma5";
    };
  }
)
