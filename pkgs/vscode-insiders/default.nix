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
    version = "1633100719";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c9e8266ee24f34107ff52d836a4e8f533afb93c5/code-insider-x64-1633100719.tar.gz";
      sha256 = "0ww4mm4vxg88n3hy20w56savb51wvrk0j34lxhnard1sfha14421";
    };
  }
)
