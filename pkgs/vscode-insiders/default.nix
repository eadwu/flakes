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
    version = "1706310585";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/5d344004f839677def958534b58e854a9ae26fd0/code-insider-x64-1706310585.tar.gz";
      sha256 = "1azy0cqcc2ggxjr95y6fzrg7ch2hmzyz0kq6dby4s92dfirwpafh";
    };
  }
)
