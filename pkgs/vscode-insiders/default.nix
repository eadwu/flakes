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
    version = "1635947281";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b3318bc0524af3d74034b8bb8a64df0ccf35549a/code-insider-x64-1635947281.tar.gz";
      sha256 = "1kv1lf0vk1amy7zg2mgbfnj6rgyjcx1k7bb0rch06ph4qsy6a7b3";
    };
  }
)
