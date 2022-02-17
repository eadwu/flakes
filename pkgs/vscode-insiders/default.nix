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
    version = "1645083629";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/86200d542474b26aa28034e0fd5789c45c747d8b/code-insider-x64-1645083629.tar.gz";
      sha256 = "0vis9y5vdi30ayjzfyyf4y8xh9jq9rwnxnypahns5m8j4izdg8vf";
    };

    postPatch = "";
  }
)
