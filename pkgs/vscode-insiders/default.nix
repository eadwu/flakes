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
    version = "1658814318";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cc098faebd320a2eea3da6ae154b7e2e1347a4b9/code-insider-x64-1658814318.tar.gz";
      sha256 = "1pbapqhxxvj711axdmnyaca5lz6mkgqhwmcvmn3f081j86g7cy4y";
    };
  }
)
