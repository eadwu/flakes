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
    version = "1729606376";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/804f450ca900d24db25e7174e8b6dfb3fb2a318c/code-insider-x64-1729606376.tar.gz";
      sha256 = "1gpsnvr900cgs544rqh9ipzjarmzqc69rfxs5spwjk75acd2ycqd";
    };
  }
)
