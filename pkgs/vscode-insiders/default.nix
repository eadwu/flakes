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
    version = "1739253382";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/21525b01bf68bf9250cb856f192628fffc449234/code-insider-x64-1739253382.tar.gz";
      sha256 = "1g574a0k48wdcwxq179fgqc8lgbmc1pgipisf3ym92m52d9gjgk8";
    };
  }
)
