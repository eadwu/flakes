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
    version = "1691645598";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d62534a60f7eb4280bcbee66bbd84a2e15f13765/code-insider-x64-1691645598.tar.gz";
      sha256 = "0avzndmdad0k330cm7lfpyzpx1vnxbxcyijy78wip3753i2r4vi5";
    };
  }
)
