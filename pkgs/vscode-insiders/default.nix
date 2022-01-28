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
    version = "1643348645";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4af3e141defad7b6b96aa1e831f4b50f78abbe6d/code-insider-x64-1643348645.tar.gz";
      sha256 = "1p49lc3fg1ik909ch7kzj3p5lmmnl2jwilvl3lvznmxi9q6pg5bm";
    };

    postPatch = "";
  }
)
