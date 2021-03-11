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
    version = "1615440674";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9b2ee7fb7d970b9a628fdb3545bdd01d67078d16/code-insider-x64-1615440674.tar.gz";
      sha256 = "0fs2zihy2kwm8iba8yxcpzrzkwh762zai2a596jgzblhjn4h89c8";
    };
  }
)
