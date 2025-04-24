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
    version = "1745508233";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/0cffb673f50e4f9258b4a509e63e0abcb07ef786/code-insider-x64-1745508233.tar.gz";
      sha256 = "13pjwjgsn44gsqpawc0rjjpajhib6piisamz8zn87320r5l5ayvw";
    };
  }
)
