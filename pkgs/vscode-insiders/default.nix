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
    version = "1744618776";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/1799c2beaa0669db243c05b6cfc2656162086eba/code-insider-x64-1744618776.tar.gz";
      sha256 = "1nyhxgpmi0dvnk374dahm7hd66ql64y0sm36yv2cwfbhqmsz509k";
    };
  }
)
