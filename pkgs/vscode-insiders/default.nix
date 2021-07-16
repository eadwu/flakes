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
    version = "1626430993";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/599f5d2c67571f84a045a59eb3423bc254ee87d9/code-insider-x64-1626430993.tar.gz";
      sha256 = "1s9b1vnb7zsm7dgxdwlkn36m7gpw1c9cqmr6alwx54qjbv3xam44";
    };
  }
)
