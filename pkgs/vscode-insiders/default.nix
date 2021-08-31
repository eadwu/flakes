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
    version = "1630423112";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/efaa9c304bba61bdce8b0d39db5df94ce3a53fb6/code-insider-x64-1630423112.tar.gz";
      sha256 = "0c5x9w30d1vfc74g32nmyl4fdv2vx3lm88drph0r47zq8zwls985";
    };
  }
)
