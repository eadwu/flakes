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
    version = "1636472560";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/93ce4397a2cbc88707c3ed8b34a813b87457568c/code-insider-x64-1636472560.tar.gz";
      sha256 = "0svh43s3xrgbfxnfjblswlkrb3n2q7h9h6fxz9r3mdhipgp0yzag";
    };
  }
)
