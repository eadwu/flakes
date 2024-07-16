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
    version = "1721108889";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/06f8ef165cc37104bc78b7f36209d95333474348/code-insider-x64-1721108889.tar.gz";
      sha256 = "0zks9b7pvf41h3dl6a7iq5m42y0nx2arcfbsyad99wi3ay95bwp2";
    };
  }
)
