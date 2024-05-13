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
    version = "1715365119";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/26c4a07b47a2bd34480a5e4cba2c2384c590b039/code-insider-x64-1715365119.tar.gz";
      sha256 = "11zpsf10km3vgjy163zfb034h7b8ikxlk6ngiwkbwrkd22vb20r7";
    };
  }
)
