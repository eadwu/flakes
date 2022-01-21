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
    version = "1642773427";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/23664355e61f3fb614932a5cb16613b4d987cfb7/code-insider-x64-1642773427.tar.gz";
      sha256 = "1xjwx3ps4g845v94ygm1x4cpsnrmvm0lhqjdgbdhic4by9cxyp6s";
    };

    postPatch = "";
  }
)
