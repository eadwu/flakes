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
    version = "1683783915";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/02298ef4180f2a5db39e0cb6288382860b96a596/code-insider-x64-1683783915.tar.gz";
      sha256 = "0fj6c1qidkqadr8gmrqx2wa71mr35lkrpsr91yc9l588k2pncg9m";
    };
  }
)
