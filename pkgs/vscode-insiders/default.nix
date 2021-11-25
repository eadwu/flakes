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
    version = "1637742447";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c1f2f40bcd81380bf2e286af64becddada57db88/code-insider-x64-1637742447.tar.gz";
      sha256 = "0dgpf5rlm1vsyrhcip87f71h4gxcinc7glq8pha5wakf9vbbsn3n";
    };

    postPatch = "";
  }
)
