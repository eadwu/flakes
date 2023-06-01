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
    version = "1685647618";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/940571e267875749bac5577689072318d8f02485/code-insider-x64-1685647618.tar.gz";
      sha256 = "0ljx9jjh64sm62n2w8wbyycgrbifd1wv1v132sj4iv4g4zdgk4jj";
    };
  }
)
