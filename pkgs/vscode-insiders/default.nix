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
    version = "1705296950";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/81725794264e4c0fddbc1b3b728013744ae90840/code-insider-x64-1705296950.tar.gz";
      sha256 = "1jp7i0glmj6gxdwmy1hxqab09r9nll957rl7sz4f22wc1rbhnlrj";
    };
  }
)
