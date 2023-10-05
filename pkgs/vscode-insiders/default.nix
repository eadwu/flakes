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
    version = "1696484192";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7d4027b62bb1e620e5454580450fa646682bc102/code-insider-x64-1696484192.tar.gz";
      sha256 = "1sd6pz3vbigrx4ivbmx184l581xjdjd35xs612yvvrzx13wnv5vd";
    };
  }
)
