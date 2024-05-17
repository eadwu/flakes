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
    version = "1715968269";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f209ce35ef894bd32c12057724e8d1f1139c433f/code-insider-x64-1715968269.tar.gz";
      sha256 = "0ksfr27mr7vg2zqm2gc3mgjs03502jqwk7v0mi8la62jsyv9mw25";
    };
  }
)
