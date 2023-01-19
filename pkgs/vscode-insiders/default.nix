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
    version = "1674107311";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/b89923233edbd4ccf38a216bffd8fb84dda72305/code-insider-x64-1674107311.tar.gz";
      sha256 = "1nhyqwpazwps8fjsxkq3wfp45fcn3v3flawafjg09ax3z1kkv2xp";
    };
  }
)
