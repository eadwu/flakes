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
    version = "1635400030";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f961b92f0faec5c68124ab4d89922d38cf6f513d/code-insider-x64-1635400030.tar.gz";
      sha256 = "1zzw022wza3ilb103g64m0xsnl852mbm0fcx7xzxdqibr53r2x56";
    };
  }
)
