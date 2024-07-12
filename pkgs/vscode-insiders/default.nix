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
    version = "1720763796";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a35380d6f0ff65f7c35345baafcf1c3f8a378d38/code-insider-x64-1720763796.tar.gz";
      sha256 = "1kslzx2rc0m03j4wf6pswppy057nnnn3irs9ajrrj7liwzd2h7yx";
    };
  }
)
