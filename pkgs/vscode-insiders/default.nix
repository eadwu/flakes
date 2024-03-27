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
    version = "1711575976";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9e0b3f311a68dce476b6209519d5b1506077bbcb/code-insider-x64-1711575976.tar.gz";
      sha256 = "1frw573v94amgnnpac45l8q43ld6rkpq46nfqcxxfdb7yx7d943b";
    };
  }
)
