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
    version = "1738363138";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0fb834cd250880f4fb801a7771827a1ea23e4cdb/code-insider-x64-1738363138.tar.gz";
      sha256 = "0dmkswphywkpdsimpk7bmdy4i484g3w165gfdan29bqxxy5wnc83";
    };
  }
)
