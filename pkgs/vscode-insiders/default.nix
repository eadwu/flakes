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
    version = "1711560596";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/8cfe998a17786ace2a19079feab8b24f42ecc896/code-insider-x64-1711560596.tar.gz";
      sha256 = "0cf5jn86lvh20wz1pplng5vg4lvr5wf1vxyzda92nwxln1rdkhlq";
    };
  }
)
