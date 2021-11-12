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
    version = "1636719907";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3bd29c1d6c6ef5b6265614def99b7257b671ae19/code-insider-x64-1636719907.tar.gz";
      sha256 = "0dkn1453zgjqn6lk6ymhv5y4mlbq95dh1682wykc11kaplzw8yv6";
    };
  }
)
