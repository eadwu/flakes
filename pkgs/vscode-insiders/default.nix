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
    version = "1738907829";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/fe4d6a831a4f87126187ac6ba96e16405d69de0f/code-insider-x64-1738907829.tar.gz";
      sha256 = "1z4r3s6sc82dnm3cn6iqav5i58lf2z1bbp0rqf4kfqhdawpa0vfm";
    };
  }
)
