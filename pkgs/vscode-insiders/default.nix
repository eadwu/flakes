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
    version = "1737524966";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d226a2a497b928d78aa654f74c8af5317d3becfb/code-insider-x64-1737524966.tar.gz";
      sha256 = "0zfr43832zv2pd698q4fv5f9faxx6vwsqaih3gfd2vdmxfj7nccf";
    };
  }
)
