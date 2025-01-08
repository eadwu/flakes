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
    version = "1736345976";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/2569d71b0491afddb23e173ee6cc2eb284f1b0b9/code-insider-x64-1736345976.tar.gz";
      sha256 = "09cl0wvs2l751p0406q9fk01902ywkv3z5xjlabdlwlb5bds0vpx";
    };
  }
)
