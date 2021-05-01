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
    version = "1619825818";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4e185d8986339717e593be19bc75288905ffbb51/code-insider-x64-1619825818.tar.gz";
      sha256 = "0sij2hvwv4r7g0i9ba427m67an9km6pkyrsg2k3fvm7dr7wwgjjv";
    };
  }
)
