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
    version = "1741238659";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/14324bbbc2cca2ddb998d6ab577f02efe00efe0c/code-insider-x64-1741238659.tar.gz";
      sha256 = "18ydif0bvlps7z7dww60pqlmyrgmanahqbd357fyg78n3if7s67a";
    };
  }
)
