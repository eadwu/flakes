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
    version = "1747726166";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/ccdd214171190f69e28c8c3def68a6315f4d9ae0/code-insider-x64-1747726166.tar.gz";
      sha256 = "08f8qd6ji85ms0s35igg58p18100xvaprxp7vrcwlqignxgrpd92";
    };
  }
)
