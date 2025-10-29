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
    version = "";

    src = fetchurl {
      url = "https://update.code.visualstudio.com/latest/linux-x64/insider";
      sha256 = "";
    };
  }
)
