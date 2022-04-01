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
    version = "1648791979";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8b7086afdbfd42bf6e7b8c0bb586530bf7cf1396/code-insider-x64-1648791979.tar.gz";
      sha256 = "08paxxrpbrlbrinh6bz3z8vbqif8fy4xl0ywiwic3vdk0mp1rin3";
    };

    postPatch = "";
  }
)
