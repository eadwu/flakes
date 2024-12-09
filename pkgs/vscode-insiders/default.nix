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
    version = "1733763160";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/9e67a1dad5d030b5e2d4a1bb70f12c82287135db/code-insider-x64-1733763160.tar.gz";
      sha256 = "0rw10q8nq0a9x6hm0qprd68nv6l5kmqd5f91sfyvlv9xzsdbmqrm";
    };
  }
)
