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
    version = "1641540775";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ea2afbaf90cb6d9672d8a681e90492d23c687064/code-insider-x64-1641540775.tar.gz";
      sha256 = "119j2lr9jz0q5sp5spa51fxzjj505jyz8q6ayww8xqbc631fc3n0";
    };

    postPatch = "";
  }
)
