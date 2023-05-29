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
    version = "1685339015";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/667d4629dee90744edd5054f13bc2452c8c14490/code-insider-x64-1685339015.tar.gz";
      sha256 = "189w6jrx4qcqwi6nh9yfbkrjzq7nr669b14d09gjy247w93d4y5v";
    };
  }
)
