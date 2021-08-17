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
    version = "1629228174";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/af770c2dc85ef6835197a8bd7eb416fe0a022c44/code-insider-x64-1629228174.tar.gz";
      sha256 = "0swdgl86q7ly96lcmnvznsmrlqnzaq6injb71rkygz4y777f6bpq";
    };
  }
)
