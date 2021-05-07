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
    version = "1620408962";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a19565da7dfc739fa26e36aae96113e19fe3806f/code-insider-x64-1620408962.tar.gz";
      sha256 = "0h779ml7z1yq79y1a9rljn5yhdc0rny24p6nsiyrggfwn544wnbq";
    };
  }
)
