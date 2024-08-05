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
    version = "1722836963";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/39d98602020ddefe53ed217a8c50b9040673a737/code-insider-x64-1722836963.tar.gz";
      sha256 = "1f38lfk5cxgdr24fn5dijrmmyma8lbvy21wmd5vczyh0hx3b0h92";
    };
  }
)
