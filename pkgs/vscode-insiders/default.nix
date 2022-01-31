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
    version = "1643575447";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a853936292178200eb58c2a9904d7a7dcf98cce8/code-insider-x64-1643575447.tar.gz";
      sha256 = "1x5qdzhviqncxngkicvphmbzimj6g4k9r8qcn8iz9zsmp5f8xrs9";
    };

    postPatch = "";
  }
)
