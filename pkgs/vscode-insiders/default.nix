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
    version = "1685966137";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/666396ddec7708df2b986dcc178863faaa67c14d/code-insider-x64-1685966137.tar.gz";
      sha256 = "0ds4jrr57gjz27gjdd5sb9rx1zv68pzphbk1w7ac7z0j40s7grb2";
    };
  }
)
