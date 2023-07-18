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
    version = "1689658680";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4390ebc406732e5b4eed22a1d7aa4fc0ef4a9460/code-insider-x64-1689658680.tar.gz";
      sha256 = "181prsc67xx03qhjbh46f3xfll745q0s7cynck11irmf8wmpras5";
    };
  }
)
