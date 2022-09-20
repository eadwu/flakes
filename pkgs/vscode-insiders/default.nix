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
    version = "1663652657";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a829fbb91cbae44afb6a389341a0763fb3a6ac6f/code-insider-x64-1663652657.tar.gz";
      sha256 = "021q9hq081h8zfa2jgzm6gip5629vl71bxl0765zkrnb28fd9fpc";
    };
  }
)
