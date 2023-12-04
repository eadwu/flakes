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
    version = "1701457212";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/94a3d7bac770b43ce97e9685715bef1a60d1a759/code-insider-x64-1701457212.tar.gz";
      sha256 = "02mzgdg6002scfwbnlya9i3s9gz5xj0627vrv96lswkpkcv5m4x4";
    };
  }
)
