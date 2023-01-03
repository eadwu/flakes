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
    version = "1672737660";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/717d7d62c8b4566ab6704de931e7fe8e0649d810/code-insider-x64-1672737660.tar.gz";
      sha256 = "0zyk1c1ygvjkdnldbnvnh6ac08kajr3a7p1y4bs5d9gdhsg2fra8";
    };
  }
)
