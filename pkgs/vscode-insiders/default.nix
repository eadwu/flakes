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
    version = "1746768066";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/65fd0a7764119263ab3d5669153ee900ef1844ed/code-insider-x64-1746768066.tar.gz";
      sha256 = "1wr2gmyd7dv6nyaxxd0jwc73062fmhw1x9brlf8xvqrrr2yn5l6k";
    };
  }
)
