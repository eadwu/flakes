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
    version = "1671688503";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/42814d18a7d46adfb1c24e1349b7ab18833ec6ac/code-insider-x64-1671688503.tar.gz";
      sha256 = "1mb92ha771k0bxl0ggnpfrhzw0m8pc4rz2hxrnlkz8i068z2a3ai";
    };
  }
)
