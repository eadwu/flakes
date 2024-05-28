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
    version = "1716875352";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/50f2b2eca8d5c6e19ec95f9d46a59f623e60cac3/code-insider-x64-1716875352.tar.gz";
      sha256 = "0ai4wfgyrqpc390y06p301bjkd181rahmhd18zdw2p9qzgm152jq";
    };
  }
)
