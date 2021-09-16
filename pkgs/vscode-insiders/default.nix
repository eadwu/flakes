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
    version = "1631782520";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/da10782b86bd9d895ccb20be4514b19728036951/code-insider-x64-1631782520.tar.gz";
      sha256 = "1nsvrix0aka6m9yflkdcd757m9g2sxfqigfw4y2q8kddipxpbklh";
    };
  }
)
