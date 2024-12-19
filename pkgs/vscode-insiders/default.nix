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
    version = "1734605961";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7e000daa484bbf6e434c9942c39bb2eee569619c/code-insider-x64-1734605961.tar.gz";
      sha256 = "0r5vg6gm5k3v0z19imn77wkwh54f45jd85jr5qn1irjl6hf0yf2h";
    };
  }
)
