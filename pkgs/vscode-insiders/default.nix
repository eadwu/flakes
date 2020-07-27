{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1595872517";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/88e641626546dceb53285aa0ddb44786324cb1bf/code-insider-1595872517.tar.gz";
      sha256 = "1hlixl547sb7mqk38kkkyhihypvc7mc9fvg9a85rga3qwpba23cs";
    };
  }
)
