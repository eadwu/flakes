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
    version = "1730929370";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/92b713f613bd24c7b271eea6cedc45181207f179/code-insider-x64-1730929370.tar.gz";
      sha256 = "0n2v85yr6s2i608bpq7x7c8jkv8vw6jda80pb085zzh7di6mvql6";
    };
  }
)
