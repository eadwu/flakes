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
    version = "1744089773";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/58c1e2e3b5fad8e4582f4e1f6d652fbdd370c136/code-insider-x64-1744089773.tar.gz";
      sha256 = "05v4kj57b7hbb5g3wbf3x8bamsibkkqc6avxqb4v6s72y85n6s35";
    };
  }
)
