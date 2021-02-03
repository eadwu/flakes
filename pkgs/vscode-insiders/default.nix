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
    version = "1612341600";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e1c818a171168eedf78b62fdc7f4e3458d5dea7c/code-insider-x64-1612341600.tar.gz";
      sha256 = "0wmra6j52py81yic3li5aapgjynfaj4pp22x7a1zscvdx3z13j8k";
    };
  }
)
