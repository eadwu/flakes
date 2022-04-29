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
    version = "1651210640";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8632e9c4096eab5773958b9fb3f45f92efba74a8/code-insider-x64-1651210640.tar.gz";
      sha256 = "1j0cj8kxj1n7j4q6c3zxfrshz3h5y3bby6x44gyd7k1vx85xd1bi";
    };

    postPatch = "";
  }
)
