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
    version = "1730958626";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/818169af1dac5a59b4cb43c5681cfe0ea4a23463/code-insider-x64-1730958626.tar.gz";
      sha256 = "1m4bsvqkx44c54pc4rs66cbcr68hcyzi0zgq5l1zd3missbdaviz";
    };
  }
)
