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
    version = "1618205520";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/01466cf692c3e54f0eeb82ef0539a42391f185de/code-insider-x64-1618205520.tar.gz";
      sha256 = "1a80i2hrz71v0wvnmbbi625xy5c35w8qhvrwrhzi7x8fpxqah740";
    };
  }
)
