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
    version = "1736228991";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/70866d528727b9131fc07b0f14869f256059949b/code-insider-x64-1736228991.tar.gz";
      sha256 = "02fwgpfg99148qpmj0axbh2d8m472fg09i6q8mrdww0hwa9nzygk";
    };
  }
)
