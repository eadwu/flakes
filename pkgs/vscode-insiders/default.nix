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
    version = "1705037820";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/29bef5673ebb1fc3a59b90c9d8bfd2bc61c3f011/code-insider-x64-1705037820.tar.gz";
      sha256 = "0ixz8g0jvailk8dq94jramm1qv403j76gjjyx712zii1hkvac6hc";
    };
  }
)
