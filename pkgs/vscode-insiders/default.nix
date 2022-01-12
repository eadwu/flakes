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
    version = "1641966190";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/753319a08f8e74700b1dba3a29bf0a6af7c2953f/code-insider-x64-1641966190.tar.gz";
      sha256 = "1ivbi1a6j6k4v7vwmd0n4ldsgs50cn8l8pi903zijs38sxrz9j67";
    };

    postPatch = "";
  }
)
