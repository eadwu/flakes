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
    version = "1707429974";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/bcf9b4ff0ff453a72d01f4bceaea05e166f347c6/code-insider-x64-1707429974.tar.gz";
      sha256 = "1r0mf5zkjxh4pmlrn3abvhgfgr710s1rlsa0akj9i1png150gikw";
    };
  }
)
