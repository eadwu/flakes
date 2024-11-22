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
    version = "1732272013";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/90868576241dd25c6c5da64adadc0a09de91a9fe/code-insider-x64-1732272013.tar.gz";
      sha256 = "0f3adsyiyx99dcp2alzgzy6iakfd4dvcszj21fd1j378w48swzf4";
    };
  }
)
