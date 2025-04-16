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
    version = "1744780792";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/942d11fff1a3a4f0faa918b59803f699ec61b9b6/code-insider-x64-1744780792.tar.gz";
      sha256 = "1fdyjflb4m7abwnibpgxdqymxchnvrbq3svncd4qar6bk0al9pr3";
    };
  }
)
