{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1589871116";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/6236f65fa0be9dd3019e5d3bf417ac504e1d0039/code-insider-1589871116.tar.gz";
        sha256 = "1725222z7yd45kn3vp88v3dkqcvvv36dqaswvyih1gy5y411s52f";
      };
    }
  )
