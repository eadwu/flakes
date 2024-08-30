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
    version = "1725046615";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/336db9ece67f682159078ea1b54212de7636d88a/code-insider-x64-1725046615.tar.gz";
      sha256 = "0lpbrnzydw6ab50syyn9qbvzjg9x7n1v1fzjf4f83f9c46avpfr6";
    };
  }
)
