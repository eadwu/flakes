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
    version = "1629716913";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/44568e5947efa4811419e529e80fb14b7554cf61/code-insider-x64-1629716913.tar.gz";
      sha256 = "1hfj89lg8dxlih0d3bxrm885rvd8l1i503f541jsbq2fm8r8kqs9";
    };
  }
)
