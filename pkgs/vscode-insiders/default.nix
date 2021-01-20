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
    version = "1611134856";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4d0d36c6ab154d841263c8d223a4bd1b9af07a23/code-insider-x64-1611134856.tar.gz";
      sha256 = "0yc4knxfh9774f0hk7yb7fk3i5pxvfbiqyb282lg4ffw4gziwzwl";
    };
  }
)
