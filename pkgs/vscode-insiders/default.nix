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
    version = "1711663925";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/aa25485166449aa0f9eb8ebd8d0b70376108633c/code-insider-x64-1711663925.tar.gz";
      sha256 = "1svj1k002s6pllwysgdy2pi8lxpd5idhz7f55fwxb60imd2k8zpf";
    };
  }
)
