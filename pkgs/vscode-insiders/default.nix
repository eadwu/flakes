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
    version = "1625660794";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2d23c42a936db1c7b3b06f918cde29561cc47cd6/code-insider-x64-1625660794.tar.gz";
      sha256 = "0mzp9rph86sz05h233qn8d8m2a92iazs35ag0kqlk4zv59f5psla";
    };
  }
)
