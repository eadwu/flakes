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
    version = "1713246636";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a2194e8c49790e2139c139a0d986e815ebd43e5b/code-insider-x64-1713246636.tar.gz";
      sha256 = "18w4fxvjmhgl26b46cpl1m340y452334bnhzag4zzd5a2ifs0viy";
    };
  }
)
