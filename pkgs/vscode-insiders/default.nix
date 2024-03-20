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
    version = "1710955327";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/342d7a0c0ceec77ace1a4b50c1da809c64d224a9/code-insider-x64-1710955327.tar.gz";
      sha256 = "1wvb3rdb7dg216w724p3x7v359z0fh4fj41qivx5bl1fv174bzjh";
    };
  }
)
