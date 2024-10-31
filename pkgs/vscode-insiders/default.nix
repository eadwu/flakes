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
    version = "1730314765";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/414584860eaf8fd673673345026f9c0dfccb7a46/code-insider-x64-1730314765.tar.gz";
      sha256 = "1c71m7c3vj6gblnn5j6dm72vsyi0ca1ijqxzy87ck74pphkrnj25";
    };
  }
)
