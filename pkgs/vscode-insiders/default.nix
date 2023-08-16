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
    version = "1692164016";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7a464d6069a39b7d0e63c3da453d43a53eea7495/code-insider-x64-1692164016.tar.gz";
      sha256 = "1gs5px219kblr6fp578dhmcy46768dwp5vw7y6rixnp19lcmaw6m";
    };
  }
)
