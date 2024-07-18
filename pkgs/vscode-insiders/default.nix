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
    version = "1721281699";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/65a6a2f783dbc87fb3b1408c6a9b3e8d455a60a2/code-insider-x64-1721281699.tar.gz";
      sha256 = "0glj9clchng6yvzwpc1fmgzs60hmgxmiz8sr1nhfl6m3vf8zzb6a";
    };
  }
)
