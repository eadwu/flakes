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
    version = "1657544051";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9925e5d4d3d355758cd09d26868f0c12a0006828/code-insider-x64-1657544051.tar.gz";
      sha256 = "1ccgxxjv5hgcaa1lvs2vq70d6n2da27xqf8yczmms9lgyaw04m17";
    };
  }
)
