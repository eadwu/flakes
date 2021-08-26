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
    version = "1629956132";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b71e20ceba833fcb2efada1a4765929ff96ccbb1/code-insider-x64-1629956132.tar.gz";
      sha256 = "1mjz8i2xs8yx8g90jh915nn3pylj7wcv352g8zprlz35ysmbva4r";
    };
  }
)
