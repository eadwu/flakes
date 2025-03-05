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
    version = "1741197720";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6d98db08819f07a8541bfb396be1b0e6819f5d71/code-insider-x64-1741197720.tar.gz";
      sha256 = "17zlqhacyw8nf2zgk98p82bbk1crc2xgv0sms3y12i06wpnlqbw7";
    };
  }
)
