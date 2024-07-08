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
    version = "1720072141";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/34f8428e4b0e3bf822f4b9e8b4e3e0cab69ef2ce/code-insider-x64-1720072141.tar.gz";
      sha256 = "0h5kg5dbk51j7nhhi3laan64cmjdbv8q1rnvlznj21ly5hjx35m1";
    };
  }
)
