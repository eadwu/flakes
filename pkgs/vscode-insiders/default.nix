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
    version = "1728380290";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a3cf6b8bcb57cf77ed546a4636be6ca068bfc0d8/code-insider-x64-1728380290.tar.gz";
      sha256 = "1vrlciil96r4x128yyf6zc6r157clinvwmxv9i3q6rcwnrx0pr1m";
    };
  }
)
