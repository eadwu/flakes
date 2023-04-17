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
    version = "1681710535";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1e774371f2ca5f6618b4f40fdc72ce7518443014/code-insider-x64-1681710535.tar.gz";
      sha256 = "1m8m5yq9maixra6y3h8820sdlh6rgf6faxlmsm44pgm1xq7bxhmh";
    };
  }
)
