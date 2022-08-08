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
    version = "1659937540";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b0895f9fcc5b49587a2b187a92bbe6d7efae35fa/code-insider-x64-1659937540.tar.gz";
      sha256 = "090zqzgv3l9mabfg0wr6a5iqajyfwr6hwjf8pdaqiw216bc0a6vb";
    };
  }
)
