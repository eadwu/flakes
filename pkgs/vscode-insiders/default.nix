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
    version = "1616690391";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6ebe2a14f3722bc2582ecd8108d0a71dfdd46036/code-insider-x64-1616690391.tar.gz";
      sha256 = "1dhkgphvfy3azxlyw47waca8hd10v82wyrgihsxw6lpcjkhvnyks";
    };
  }
)
