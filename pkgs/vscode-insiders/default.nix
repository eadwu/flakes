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
    version = "1726133337";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/102ff8db3f8dd54027407279ed5cb78e81b4bf19/code-insider-x64-1726133337.tar.gz";
      sha256 = "18893a0d98mn728shlzvk9svnzkvcsy233bl2nl691yglfyy6rn2";
    };
  }
)
