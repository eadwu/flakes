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
    version = "1635757387";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/673165ca934c05d63fcab74bac7c819c32528c64/code-insider-x64-1635757387.tar.gz";
      sha256 = "1ya1f3151ar9wz7syjivj4a6x8d2l047ylzxq15syfk99p3j7mna";
    };
  }
)
