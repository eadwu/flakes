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
    version = "1721845301";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3873c58c47cb9690cda5f8e22f4f81b040c35891/code-insider-x64-1721845301.tar.gz";
      sha256 = "02289qqjrb1444sq4ylhbnnjcv26p7lz3gm0xm9i26wpq2c0cqcf";
    };
  }
)
