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
    version = "1705556157";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0b571a26e213bf1ec6266e37152ced80c006bd1e/code-insider-x64-1705556157.tar.gz";
      sha256 = "1pnj2iz3r0m101x0rylxlrq1ll5id3fscnrdq6cx4ccgr2gihqf5";
    };
  }
)
